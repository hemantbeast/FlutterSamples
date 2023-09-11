package com.example.watch_sample

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import by.kirich1409.viewbindingdelegate.viewBinding
import com.example.watch_sample.databinding.ActivityMainBinding
import com.google.android.gms.wearable.CapabilityClient
import com.google.android.gms.wearable.DataClient
import com.google.android.gms.wearable.DataEventBuffer
import com.google.android.gms.wearable.MessageClient
import com.google.android.gms.wearable.MessageEvent
import com.google.android.gms.wearable.NodeClient
import com.google.android.gms.wearable.Wearable
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await

class MainActivity : ComponentActivity(R.layout.activity_main), MessageClient.OnMessageReceivedListener, DataClient.OnDataChangedListener {
    private val binding: ActivityMainBinding by viewBinding()
    private val coroutineScope: CoroutineScope = CoroutineScope(Dispatchers.IO)

    private lateinit var capabilityClient: CapabilityClient
    private lateinit var messageClient: MessageClient
    private lateinit var nodeClient: NodeClient
    private lateinit var dataClient: DataClient

    override fun onCreate(savedInstanceState: Bundle?) {
        installSplashScreen()
        super.onCreate(savedInstanceState)
        initAllClients()

        messageClient.addListener(this)
        dataClient.addListener(this)

        addNewCapacity()

        binding.apply {
            txtMain.text = getString(R.string.hello_world, "Android")

            btnSend.setOnClickListener {
                coroutineScope.launch {
                    val byte = txtMain.text.toString().toByteArray()
                    print(byte)

                    nodeClient.connectedNodes.await().forEach {
                        messageClient.sendMessage(
                            it.id,
                            "/wearos-message-path",
                            txtMain.text.toString().toByteArray()
                        )
                    }
                }
            }
        }
    }

    private fun initAllClients() {
        capabilityClient = Wearable.getCapabilityClient(this)
        messageClient = Wearable.getMessageClient(this)
        nodeClient = Wearable.getNodeClient(this)
        dataClient = Wearable.getDataClient(this)
    }

    private fun addNewCapacity() {
        coroutineScope.launch {
            try {
                capabilityClient.addLocalCapability("flutter_smart_watch_connected_nodes")
            } catch (e: Exception) {
                print(e.message)
            }
        }
    }

    override fun onMessageReceived(event: MessageEvent) {
        binding.txtMain.text = event.data.decodeToString()
    }

    override fun onDataChanged(event: DataEventBuffer) {
        val dataItem = event[0].dataItem
        binding.txtMain.text = dataItem.data?.decodeToString()
    }
}