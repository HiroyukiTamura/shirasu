package com.cks.shirasu

import android.content.Intent
import android.os.Bundle
import android.support.v4.media.MediaBrowserCompat
import android.support.v4.media.MediaMetadataCompat
import androidx.media.MediaBrowserServiceCompat
import com.example.flutter_video_background.ErrNotificationManager
import com.example.flutter_video_background.MusicServiceDelegate
import com.example.flutter_video_background.UampNotificationManager
import com.example.flutter_video_background.extensions.title
import com.google.android.exoplayer2.ExoPlaybackException

class MusicService : MediaBrowserServiceCompat() {

    private val errNtfConfig = object : ErrNotificationManager.ErrNotificationManagerConfig(
            CHANNEL_ID_ERR,
            DEFAULT_ERR_NTF_ID,
            R.string.err_channel_name,
            R.string.err_channel_desc,
            R.drawable.baseline_error_white_24dp,
    ) {
        override fun getContentTitle(exceptionType: Int, lastPlayed: MediaMetadataCompat?): CharSequence =
                getString(R.string.err_ntf_title_unknown)

        override fun getContentText(exceptionType: Int, lastPlayed: MediaMetadataCompat?): CharSequence? = lastPlayed?.title
    }

    private val audioNtfConfig = UampNotificationManager.Config(
            CHANNEL_ID,
            NTF_ID,
            R.string.channel_name,
            R.string.channel_desc,
            R.drawable.ntf_icon,
            R.dimen.program_img_w,
            R.dimen.program_img_h,
    )

    private val serviceDelegate = MusicServiceDelegate(this, BuildConfig.APPLICATION_ID, this::class.java, audioNtfConfig, errNtfConfig)

    override fun onCreate() {
        super.onCreate()
        serviceDelegate.onCreate()
    }

    override fun onTaskRemoved(rootIntent: Intent) {
        serviceDelegate.onTaskRemoved(rootIntent)
        super.onTaskRemoved(rootIntent)
    }

    override fun onDestroy() = serviceDelegate.onDestroy()

    override fun onGetRoot(
            clientPackageName: String,
            clientUid: Int,
            rootHints: Bundle?
    ) = serviceDelegate.onGetRoot()

    override fun onLoadChildren(parentId: String, result: Result<List<MediaBrowserCompat.MediaItem>>) =
            serviceDelegate.onLoadChildren(result)
}

private const val CHANNEL_ID = "com.cks.shirasu/main"
private const val CHANNEL_ID_ERR = "com.cks.shirasu/err"
private const val NTF_ID = 123454321
private const val DEFAULT_ERR_NTF_ID = 1234567