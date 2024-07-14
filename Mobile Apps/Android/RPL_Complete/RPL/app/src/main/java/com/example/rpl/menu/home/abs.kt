package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.absfolder.abs1
import com.example.rpl.menu.home.absfolder.abs3

class abs : AppCompatActivity() {
    lateinit var btnKembali: ImageButton
    lateinit var btnAbs3: ImageView
    lateinit var btnAbs1: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_abs)

        btnAbs1 = findViewById(R.id.abs1)
        btnAbs3 = findViewById(R.id.abs3)
        btnKembali = findViewById(R.id.abs_back_button)

        btnAbs1.setOnClickListener {
            startActivity(Intent(this, abs1::class.java))
        }
        btnAbs3.setOnClickListener {
            startActivity(Intent(this, abs3::class.java))
        }


    }
}