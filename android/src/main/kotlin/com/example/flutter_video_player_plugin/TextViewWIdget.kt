package com.example.flutter_video_player_plugin

import android.content.Context
import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.widget.TextView


import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.platform.PlatformView

class TextViewWidget(context:Context,id:Int,creationParams :Map<String?, Any?>? ,messenger: BinaryMessenger):PlatformView {
//    private val txtView:TextView = TextView(context)
private val myView:View = LayoutInflater.from(context).inflate(R.layout.text_view_layout,null)
    init {
        myView.setBackgroundColor(Color.CYAN)
        val txtView : TextView = myView.findViewById(R.id.my_txt_view)
        txtView.text = "Text view using flutter plugin"
        txtView.textSize = 32f
//        txtView.setBackgroundColor(Color.BLUE)
    }
    override fun getView(): View? {
    return myView
    }

    override fun dispose() {
    }
}