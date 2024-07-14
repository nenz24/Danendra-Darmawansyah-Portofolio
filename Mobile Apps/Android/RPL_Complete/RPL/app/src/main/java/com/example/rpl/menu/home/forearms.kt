package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.example.rpl.menu.home.forearmfolder.forearm1
import com.example.rpl.menu.home.forearmfolder.forearm3

class forearms : AppCompatActivity() {

    lateinit var btnKembali: ImageButton
    lateinit var btnForearm1: ImageView
    lateinit var btnForearm3: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_forearm)
        btnForearm1 = findViewById(R.id.forearm1)
        btnForearm3 = findViewById(R.id.forearm3)
        btnKembali = findViewById(R.id.forearms_back_button)

        btnForearm1.setOnClickListener {
            startActivity(Intent(this, forearm1::class.java))
        }
        btnForearm3.setOnClickListener {
            startActivity(Intent(this, forearm3::class.java))
        }
        btnKembali.setOnClickListener {
            startActivity(Intent(this, NavigationBar::class.java))
        }

    }
}