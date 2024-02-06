import 'package:flutter/material.dart';
import 'package:flutter_auth/Dashboard/history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Payment Dashboard'),
        backgroundColor: Colors.blue.shade900,
        actions: [
          const Icon(Icons.person_pin),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return logOut();
                  });
            },
            icon: const Icon(Icons.logout),
          ),
          SizedBox(
            width: 12,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue.shade900,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/img1.jpg',
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          'Thomas',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder action for initiating a payment
                _initiatePayment(context);
              },
              child: const Text('Initiate Payment'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder action for viewing transaction history
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const History()));
                _viewTransactionHistory(context);
              },
              child: const Text('View Transaction History'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _initiatePayment(BuildContext context) {
    // Placeholder action for initiating a payment
    // You can replace this with the actual payment initiation logic
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Payment initiated!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _viewTransactionHistory(BuildContext context) {
    // Placeholder action for viewing transaction history
    // You can replace this with the actual logic to view transaction history
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
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

  Widget logOut() {
    return AlertDialog(
      title: Center(child: Text('Are you sure you want to logout?')),
      contentPadding: EdgeInsets.all(0),
      actionsPadding: EdgeInsets.all(0),
      actions: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Divider(
            thickness: 1,
            color: Colors.grey.withOpacity(0.1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Yes'),
            ),
            SizedBox(
              height: 40,
              child: VerticalDivider(
                thickness: 1,
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No'),
            ),
          ],
        )
      ],
    );
  }
}
