package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.example.rpl.menu.home.adductorsfolder.adductors1
import com.example.rpl.menu.home.adductorsfolder.adductors3

class adductors : AppCompatActivity() {

    lateinit var btnKembali: ImageButton
    lateinit var btnAdductors3: ImageView
    lateinit var btnAdductors1: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_adductors)

        btnAdductors1 = findViewById(R.id.adductors1)
        btnAdductors3 = findViewById(R.id.adductors3)
        btnKembali = findViewById(R.id.adductors_back_button)

        btnAdductors1.setOnClickListener {
            startActivity(Intent(this, adductors1::class.java))
        }
        btnAdductors3.setOnClickListener {
            startActivity(Intent(this, adductors3::class.java))
        }
        btnKembali.setOnClickListener {
            startActivity(Intent(this, NavigationBar::class.java))
        }


    }
}