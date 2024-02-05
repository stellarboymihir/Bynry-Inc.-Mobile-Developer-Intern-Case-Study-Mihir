// dashboard_screen.dart
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Dashboard'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Payment Dashboard!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder action for initiating a payment
                _initiatePayment(context);
              },
              child: Text('Initiate Payment'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder action for viewing transaction history
                _viewTransactionHistory(context);
              },
              child: Text('View Transaction History'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder action for logging out
                _logout(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }

  void _initiatePayment(BuildContext context) {
    // Placeholder action for initiating a payment
    // You can replace this with the actual payment initiation logic
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Payment initiated!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _viewTransactionHistory(BuildContext context) {
    // Placeholder action for viewing transaction history
    // You can replace this with the actual logic to view transaction history
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Viewing transaction history...'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _logout(BuildContext context) {
    // Placeholder action for logging out
    // You can replace this with the actual logout logic
    Navigator.pop(context); // Navigate back to the login screen
  }
}
