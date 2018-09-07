package com.example.kalana.enteryourname;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
 public void  click(View view){

     EditText name=findViewById(R.id.name);
     Toast.makeText(getApplicationContext(),"Your name is " + name.getText().toString() ,Toast.LENGTH_LONG).show();
     Log.i("Name",name.getText().toString());
 }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
