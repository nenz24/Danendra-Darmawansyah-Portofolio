package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.example.rpl.menu.home.chestfolder.ches1Activity
import com.example.rpl.menu.home.chestfolder.chest3Activity

class chest : AppCompatActivity() {

    lateinit var btnKembali: ImageButton
    lateinit var btnChest3: ImageView
    lateinit var btnChest1: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_chest)

        btnChest1 = findViewById(R.id.chest1)
        btnChest3 = findViewById(R.id.chest3)
        btnKembali = findViewById(R.id.chest_back_button)

        btnChest1.setOnClickListener {
            startActivity(Intent(this, ches1Activity::class.java))
        }
        btnChest3.setOnClickListener {
            startActivity(Intent(this, chest3Activity::class.java))
        }
        btnKembali.setOnClickListener {
            startActivity(Intent(this, NavigationBar::class.java))
        }

    }
}