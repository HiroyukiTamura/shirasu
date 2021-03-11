package com.cks.shirasu

import android.content.ComponentName
import com.example.flutter_video_background.ChannelClient
import com.example.flutter_video_background.Logger
import com.example.flutter_video_background.LoggerListener
import com.example.flutter_video_background.MusicServiceConnection
import com.google.firebase.crashlytics.FirebaseCrashlytics
import io.flutter.app.FlutterApplication

class MainApplication : FlutterApplication(), LoggerListener {

    val channelClient = ChannelClient()

    override fun onCreate() {
        super.onCreate()
        Logger.instance.initialize(this)
        channelClient.mConnection = MusicServiceConnection.getInstance(this, ComponentName(this, MusicService::class.java))
    }

    override fun d(tag: String, msg: Any?) = FirebaseCrashlytics.getInstance().log(msg.toString())

    override fun e(tag: String, msg: String?) =
            FirebaseCrashlytics.getInstance().log(msg.toString())

    override fun e(tag: String, thr: Throwable) =
            FirebaseCrashlytics.getInstance().recordException(thr)
}