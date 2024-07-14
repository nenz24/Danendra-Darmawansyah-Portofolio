package com.example.rpl.menu.home.quadsfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.Quads

class quads1 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_quads1)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.quads1_back)
        val quads1fragment = quads1fragment()

        btnshow.setOnClickListener {
            quads1fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, Quads::class.java))
        }
    }
}