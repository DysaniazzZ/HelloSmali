package com.dysania.hellosmali;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MainActivity extends AppCompatActivity {

    private EditText et_name;
    private EditText et_sn;
    private Button btn_register;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle(R.string.unregister);
        et_name = (EditText) findViewById(R.id.et_name);
        et_sn = (EditText) findViewById(R.id.et_sn);
        btn_register = (Button) findViewById(R.id.btn_register);
        btn_register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (!checkSN(et_name.getText().toString().trim(), et_sn.getText().toString().trim())) {
                    Toast.makeText(MainActivity.this, R.string.unsucceessed, Toast.LENGTH_SHORT).show();
                } else {
                    Toast.makeText(MainActivity.this, R.string.successed, Toast.LENGTH_SHORT).show();
                    btn_register.setEnabled(false);
                    setTitle(R.string.registered);
                }
            }
        });
    }

    private boolean checkSN(String userName, String sn) {
        try {
            if (TextUtils.isEmpty(userName)) {
                return false;
            }
            if ((sn == null) || (sn.length() != 16)) {
                return false;
            }
            MessageDigest digest = MessageDigest.getInstance("MD5");
            digest.reset();
            digest.update(userName.getBytes());
            byte[] bytes = digest.digest();
            String hexStr = toHexString(bytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hexStr.length(); i += 2) {
                sb.append(hexStr.charAt(i));
            }
            String userSN = sb.toString();
            if (!sn.equalsIgnoreCase(userSN)) {
                return false;
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    private String toHexString(byte[] array) {
        StringBuilder sb = new StringBuilder(array.length * 2);
        for (byte b : array)
            sb.append(String.format("%02x", b));
        return sb.toString();
    }
}
