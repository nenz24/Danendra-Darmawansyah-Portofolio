package com.example.rpl.autentikasi

import android.app.ProgressDialog
import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.ImageButton
import android.widget.Toast
import android.widget.Toast.LENGTH_SHORT
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.MainActivity
import com.example.rpl.NavigationBar
import com.example.rpl.R
import com.google.firebase.auth.FirebaseAuth

class LoginActivity : AppCompatActivity() {
    lateinit var editEmail: EditText
    lateinit var editPassword: EditText
    lateinit var btnRegis: Button
    lateinit var btnLogin: Button
    lateinit var btnkembali: ImageButton
    lateinit var progressDialog: ProgressDialog

    var firebaseAuth = FirebaseAuth.getInstance()


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)

        editEmail = findViewById(R.id.email)
        editPassword = findViewById(R.id.Login_Password)
        btnRegis = findViewById(R.id.signup)
        btnLogin = findViewById(R.id.Login)
        btnkembali = findViewById(R.id.back)

        progressDialog = ProgressDialog(this)
        progressDialog.setTitle("Logging")
        progressDialog.setMessage("Silahkan Tunggu")

        btnLogin.setOnClickListener {
            if (editEmail.text.isNotEmpty() && editPassword.text.isNotEmpty()) {
                proccesLogin()
            } else {
                Toast.makeText(this, "Email dan Password tidak sesuai", LENGTH_SHORT).show()
            }
        }
        btnRegis.setOnClickListener {
            startActivity(Intent(this, RegisterActivity::class.java))
        }
        btnkembali.setOnClickListener {
            startActivity(Intent(this, MainActivity::class.java))
        }
    }

    private fun proccesLogin() {
        val email = editEmail.text.toString()
        val password = editPassword.text.toString()

        progressDialog.show()
        firebaseAuth.signInWithEmailAndPassword(email, password)
            .addOnSuccessListener {
                startActivity(Intent(this, NavigationBar::class.java))

            }
            .addOnFailureListener { error ->
                Toast.makeText(this, error.localizedMessage, LENGTH_SHORT).show()
            }
            .addOnCompleteListener {
                progressDialog.dismiss()
            }
    }
}