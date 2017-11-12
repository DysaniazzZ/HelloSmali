# HelloSmali
* A tutorial to show how to reverse an app.

### Steps
* Decompile apk: `apktool d app-debug.apk`;
* Seek and modify smali;
* Recompile apk: `apktool b app-debug.apk`;
* Sign the new apk: `jarsigner -verbose -keystore [keystore文件路径] -storepass [keystore文件密码] [待签名Apk路径] [keystore文件别名]`.

### Tool
* Apktool: <https://ibotpeaches.github.io/Apktool/>
