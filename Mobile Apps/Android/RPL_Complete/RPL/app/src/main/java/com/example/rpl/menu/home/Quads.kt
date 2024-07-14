package com.example.rpl.menu.home

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.example.rpl.menu.home.quadsfolder.quads1
import com.example.rpl.menu.home.quadsfolder.quads3

class Quads : AppCompatActivity() {

    lateinit var btnKembali: ImageButton
    lateinit var btnQuads1: ImageView
    lateinit var btnQuads3: ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_quads)

        btnQuads1 = findViewById(R.id.quads1)
        btnQuads3 = findViewById(R.id.quads3)
        btnKembali = findViewById(R.id.Quads_back_button)

        btnQuads1.setOnClickListener {
            startActivity(Intent(this, quads1::class.java))
        }
        btnQuads3.setOnClickListener {
            startActivity(Intent(this, quads3::class.java))
        }
        btnKembali.setOnClickListener {
            startActivity(Intent(this, NavigationBar::class.java))
        }
    }
}