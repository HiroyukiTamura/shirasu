package com.cks.shirasu

import android.content.ComponentName
import android.media.AudioManager
import android.os.Bundle
import android.util.Log
import com.example.flutter_video_background.ChannelClient
import com.example.flutter_video_background.Logger
import com.example.flutter_video_background.LoggerListener
import com.example.flutter_video_background.MusicServiceConnection
import com.google.firebase.crashlytics.FirebaseCrashlytics
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import java.lang.RuntimeException

class MainActivity : FlutterActivity(), LoggerListener {

    private val channelClient = ChannelClient()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Logger.instance.initialize(this)
        volumeControlStream = AudioManager.STREAM_MUSIC
        channelClient.mConnection = MusicServiceConnection.getInstance(this, ComponentName(this, MusicService::class.java))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        channelClient.initEventChannel(flutterEngine.dartExecutor.binaryMessenger)
    }

    override fun d(tag: String, msg: Any?) = FirebaseCrashlytics.getInstance().log("$PREFIX $msg")

    override fun e(tag: String, msg: String?) =
            FirebaseCrashlytics.getInstance().log("$PREFIX $msg")

    override fun e(tag: String, thr: Throwable) =
            FirebaseCrashlytics.getInstance().recordException(thr)

    companion object {
        const val PREFIX = "------------------------------------"
    }
}
