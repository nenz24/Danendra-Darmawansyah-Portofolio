package com.example.rpl

import android.content.Intent
import android.os.Bundle
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.autentikasi.LoginActivity

class MainActivity : AppCompatActivity() {

    lateinit var btnMember: ImageButton
    lateinit var btnPT: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        btnMember = findViewById(R.id.member_button)
        btnPT = findViewById(R.id.trainer)

        btnMember.setOnClickListener {
            startActivity(Intent(this, LoginActivity::class.java))
            finish()
        }
        btnPT.setOnClickListener {
            startActivity(Intent(this, LoginActivity::class.java))
            finish()
        }
    }
}
