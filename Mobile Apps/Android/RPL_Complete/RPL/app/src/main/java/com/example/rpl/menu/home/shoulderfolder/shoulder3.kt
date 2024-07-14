package com.example.rpl.menu.home.shoulderfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.shoulders

class shoulder3 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_shoulder3)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.shoulder3_back)
        val shoulder3fragment = shoulder3fragment()

        btnshow.setOnClickListener {
            shoulder3fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, shoulders::class.java))
        }
    }
}