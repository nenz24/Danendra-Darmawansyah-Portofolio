package com.example.rpl.trainer

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R

class Mytrainerprofil1 : AppCompatActivity() {

    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_mytrainerprofil1)

        btnkembali = findViewById(R.id.mytrainerprofil1_back_button)

        btnkembali.setOnClickListener {
            startActivity(Intent(this, Pilihtrainer::class.java))
        }
    }
}