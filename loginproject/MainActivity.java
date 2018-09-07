package com.example.kalana.loginproject;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    public void logocliclk(View view){
        EditText username=findViewById(R.id.u1);
        EditText pass=findViewById(R.id.p1);
        Log.i("Username",username.getText().toString());
        Log.i("Password",pass.getText().toString());
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
