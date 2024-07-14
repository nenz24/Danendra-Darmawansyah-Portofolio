package com.example.rpl

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.example.rpl.autentikasi.LoginActivity
import com.google.firebase.auth.FirebaseAuth

class SettingFragment : Fragment() {

    val firebaseAuth = FirebaseAuth.getInstance()

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View? {
        // Inflate the layout for this fragment
        val view =inflater.inflate(R.layout.fragment_setting, container, false)

        val fullname: TextView = view.findViewById(R.id.Username)
        val btnLogout: Button = view.findViewById(R.id.logout)
        btnLogout.setOnClickListener {
            MoveToLogin()
        }

        val firebaseAuth = firebaseAuth.currentUser
        if (firebaseAuth!=null){
            fullname.text = firebaseAuth.displayName
        }else{
            MoveToLogin()
        }
        return view
    }

    private fun MoveToLogin(){
        val Intent = Intent(activity, LoginActivity::class.java)
        startActivity(Intent)
    }
}