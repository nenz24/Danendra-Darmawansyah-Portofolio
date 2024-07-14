package com.example.rpl.menu.home.shoulderfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.shoulders

class shoulder1 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_shoulder1)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.shoulder1_back)
        val shoulder1fragment = shoulder1fragment()

        btnshow.setOnClickListener {
            shoulder1fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, shoulders::class.java))
        }
    }
}