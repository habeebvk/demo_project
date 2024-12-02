import 'package:flutter/material.dart';  
import 'package:project_sample/constants/constants.dart';
import 'package:project_sample/home.dart';  

class LoginPage extends StatefulWidget {  
  const LoginPage({super.key});  

  @override  
  State<LoginPage> createState() => _LoginPageState();  
}  

class _LoginPageState extends State<LoginPage> {  
  final _usernameController = TextEditingController();  
  final _passwordController = TextEditingController();  

  // Default username and password  
  final String _defaultUsername = 'user';  
  final String _defaultPassword = '1234';  

  void _login() {  
    String username = _usernameController.text;  
    String password = _passwordController.text;  

    if (username == _defaultUsername && password == _defaultPassword) {  
      // Successful login  
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfull Login",style: script,),backgroundColor: const Color.fromARGB(255, 15, 183, 21),)); 
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {  
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Username or Passord",style: script,),backgroundColor: Colors.red)); 
    }  
  }  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Login Page", style: textmain),  
      ),  
      body: Padding(  
        padding: const EdgeInsets.symmetric(horizontal: 20),  
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.center,  
          children: [  
            Image(  
                image: AssetImage(  
                    'assets/vecteezy_happy-3d-student-boy-with-books-on-white-background-png_22484651.png')),  
            SizedBox(height: 10),  
            TextFormField(  
              controller: _usernameController,  
              decoration: InputDecoration(  
                  prefixIcon: Icon(Icons.person),  
                  label: Text("Username"),  
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),  
            ),  
            SizedBox(height: 10),  
            TextFormField(  
              controller: _passwordController,  
              decoration: InputDecoration(  
                  prefixIcon: Icon(Icons.vpn_key),  
                  label: Text("Password"),  
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),  
            ),  
            SizedBox(height: 40),  
            Container(  
              width: double.infinity,  
              height: 50,  
              decoration: BoxDecoration(  
                borderRadius: BorderRadius.circular(10),  
                color: Colors.blue,  
              ),  
              child: ElevatedButton(  
                onPressed: _login,  
                style: ElevatedButton.styleFrom(  
                  backgroundColor: Colors.blue,  
                  foregroundColor: Colors.white,  
                ),  
                child: Text("Login", style: script),  
              ),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}