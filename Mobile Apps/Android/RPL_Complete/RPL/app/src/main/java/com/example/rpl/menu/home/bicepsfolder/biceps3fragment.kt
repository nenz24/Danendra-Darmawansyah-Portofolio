package com.example.rpl.menu.home.bicepsfolder

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.example.rpl.R
import com.google.android.material.bottomsheet.BottomSheetDialogFragment

class biceps3fragment : BottomSheetDialogFragment(){

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.activity_biceps3fragment,container,false)
    }

}