package com.example.rpl.menu.home.absfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.abs

class abs3 : AppCompatActivity() {
    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_abs3)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.abs3_back)
        val abs3fragment = abs3fragment()

        btnshow.setOnClickListener {
            abs3fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, abs::class.java))
        }
    }
}