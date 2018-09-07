package com.example.kalana.displayingmessage;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {


     public void clickfunction(View view){
         Toast.makeText(getApplicationContext(),"Login sucscceful",Toast.LENGTH_LONG).show();
         EditText user=findViewById(R.id.user);
         EditText pass=findViewById(R.id.pass);

         Log.i("User name",user.getText().toString());
         Log.i("Pass",pass.getText().toString());
     }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
