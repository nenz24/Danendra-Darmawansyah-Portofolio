package com.example.rpl.trainer

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R

class Pilihtrainer : AppCompatActivity() {

    lateinit var btnKembali: ImageButton
    lateinit var btnTrainer1 : ImageView
    lateinit var btnTrainer2 : ImageView
    lateinit var btnTrainer3 : ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_pilihtrainer)

        btnKembali = findViewById(R.id.pilihtrainer_back_button)

        btnTrainer1 = findViewById(R.id.ang)
        btnTrainer2 = findViewById(R.id.lord)
        btnTrainer3 = findViewById(R.id.nen)

        btnTrainer1.setOnClickListener {
            startActivity(Intent(this, Mytrainerprofil1::class.java))
        }

        btnTrainer2.setOnClickListener {
            startActivity(Intent(this, Mytrainerprofil2::class.java))
        }

        btnTrainer3.setOnClickListener {
            startActivity(Intent(this, Mytrainerprofil3::class.java))
        }
        btnKembali.setOnClickListener {
            startActivity(Intent(this, NavigationBar::class.java))
        }

    }
}