package com.practise.kotlinmvpractise

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import AddMain
import android.view.View
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val addSum  = AddMain()
        val sum : Int = addSum.add(100,400)
        Toast.makeText(baseContext, "Summation from external Jar is $sum",Toast.LENGTH_LONG).show()
        sumTxt.text = "Summation from external Jar is $sum"

        var pinTool = PicBlockTool()
        btnencrypt.setOnClickListener {
            var encryption = pinTool.fencrypt(plainET.text.toString())
            encryptTV.text = encryption
        }

        btnPlain.setOnClickListener{
            val decryption = pinTool.fdecrypt(encryptTV.text.toString())
            plainTV.text = decryption
        }

    }
}
