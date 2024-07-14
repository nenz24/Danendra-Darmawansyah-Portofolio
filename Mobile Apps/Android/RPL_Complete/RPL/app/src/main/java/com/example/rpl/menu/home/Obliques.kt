package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.example.rpl.menu.home.obliquesfolder.obliques1
import com.example.rpl.menu.home.obliquesfolder.obliques3

class Obliques : AppCompatActivity() {

    lateinit var btnKembali: ImageButton
    lateinit var btnObliques3: ImageView
    lateinit var btnObliques1: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_obliques)

        btnObliques1 = findViewById(R.id.obliques1)
        btnObliques3 = findViewById(R.id.obliques3)
        btnKembali = findViewById(R.id.obliques_back_button)

        btnObliques1.setOnClickListener {
            startActivity(Intent(this, obliques1::class.java))
        }
        btnObliques3.setOnClickListener {
            startActivity(Intent(this, obliques3::class.java))
        }
        btnKembali.setOnClickListener {
            startActivity(Intent(this, NavigationBar::class.java))
        }

    }
}