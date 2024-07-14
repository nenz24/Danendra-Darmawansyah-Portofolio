package com.example.rpl.menu.home.absfolder

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.example.rpl.R
import com.google.android.material.bottomsheet.BottomSheetDialogFragment

class abs3fragment : BottomSheetDialogFragment(){

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.activity_abs3fragment,container,false)
    }

}