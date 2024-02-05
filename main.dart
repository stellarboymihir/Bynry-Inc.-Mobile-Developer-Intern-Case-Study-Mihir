import 'package:flutter/material.dart';
import 'dashboard_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String errorMessage = "";

  // Simulating user authentication
  Future<void> _authenticateUser() async {



    await Future.delayed(Duration(seconds: 2));

    // If authentication fails, show an error message
    setState(() {
      errorMessage = "Invalid email or password. Please try again.";
    });

    // Inside _LoginScreenState
    Future<void> _authenticateUser() async {
      // Simulating user authentication
      await Future.delayed(Duration(seconds: 2));

      setState(() {
        errorMessage = ""; // Clear any previous error message
      });

      // Navigate to the DashboardScreen on successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    }
    // If authentication succeeds, navigate to the next screen
    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  // Validate email format
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }

// Validate password format
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              validator: _validateEmail,
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              validator: _validatePassword,
            ),
            SizedBox(height: 16),
            Text(
              errorMessage,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                if (_validateEmail(emailController.text) == null &&
                    _validatePassword(passwordController.text) == null) {
                  await _authenticateUser();
                }
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to the sign-up screen
                // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: Text(
                'Don\'t have an account? Sign up',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
