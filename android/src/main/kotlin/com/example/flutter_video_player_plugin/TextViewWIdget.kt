package com.example.flutter_video_player_plugin

import android.content.Context
import android.view.View
import android.widget.TextView
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.platform.PlatformView

class TextViewWidget(context:Context,id:Int,creationParams :Map<String?, Any?>? ,messenger: BinaryMessenger):PlatformView {
    private val txtView:TextView = TextView(context)

    init {
        txtView.text = "Text view using flutter plugin"
    }
    override fun getView(): View? {
    return txtView
    }

    override fun dispose() {
    }
}