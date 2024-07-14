package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.example.rpl.menu.home.shoulderfolder.shoulder1
import com.example.rpl.menu.home.shoulderfolder.shoulder3

class shoulders : AppCompatActivity() {

lateinit var btnKembali: ImageButton
lateinit var btnShoulder3: ImageView
lateinit var btnShoulder1: ImageView

override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.activity_shoulder)

    btnShoulder1 = findViewById(R.id.shoulder1)
    btnShoulder3 = findViewById(R.id.shoulder3)
    btnKembali = findViewById(R.id.shoulders_back_button)

    btnShoulder1.setOnClickListener {
        startActivity(Intent(this, shoulder1::class.java))
    }
    btnShoulder3.setOnClickListener {
        startActivity(Intent(this, shoulder3::class.java))
    }
    btnKembali.setOnClickListener {
        startActivity(Intent(this, NavigationBar::class.java))
    }

  }
}