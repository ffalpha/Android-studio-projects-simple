package com.example.kalana.imageinapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {


    public void clcik(View view){
        Toast.makeText(getApplicationContext(),"Boooooooo ghost is here !",Toast.LENGTH_LONG).show();
        ImageView cat=(ImageView)findViewById(R.id.cats);
        cat.setImageResource(R.drawable.saf);
        ImageView cat2=(ImageView)findViewById(R.id.cats2);
        cat2.setImageResource(R.drawable.saf);
        ImageView cat3=(ImageView)findViewById(R.id.cats3);
        cat3.setImageResource(R.drawable.saf);
        ImageView cat4=(ImageView)findViewById(R.id.cats4);
        cat4.setImageResource(R.drawable.saf);
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
