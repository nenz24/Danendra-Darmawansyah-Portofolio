package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.example.rpl.menu.home.bicepsfolder.biceps1
import com.example.rpl.menu.home.bicepsfolder.biceps3

class biceps : AppCompatActivity() {

    lateinit var btnKembali: ImageButton
    lateinit var btnbiceps1: ImageView
    lateinit var btnBiceps3: ImageView


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_biceps)

        btnbiceps1 = findViewById(R.id.biceps1)
        btnBiceps3 = findViewById(R.id.biceps3)
        btnKembali = findViewById(R.id.biceps_back_button)

        btnbiceps1.setOnClickListener {
            startActivity(Intent(this, biceps1::class.java))
        }
        btnBiceps3.setOnClickListener {
            startActivity(Intent(this, biceps3::class.java))
        }
        btnKembali.setOnClickListener {
            startActivity(Intent(this, NavigationBar::class.java))
        }

    }
}