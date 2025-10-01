import 'package:flutter/material.dart';
import 'dart:async';
import 'dashboard_screen.dart';

class OtpScreen extends StatefulWidget {
  final bool isSignUp;
  final String email;
  const OtpScreen({super.key, required this.isSignUp, required this.email});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  int _secondsRemaining = 120;
  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Verification")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Enter the OTP sent to ${widget.email}"),
            TextFormField(
              controller: otpController,
              decoration: InputDecoration(labelText: "OTP"),
            ),
            SizedBox(height: 10),
            Text("Time Remaining: $_secondsRemaining sec"),
            SizedBox(height: 20),
            ElevatedButton(
                child: Text("Verify OTP"),
                onPressed: () {
                  // Add actual OTP verification logic here
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => DashboardScreen()));
                }),
            TextButton(
                onPressed: _secondsRemaining == 0
                    ? () {
                        setState(() {
                          _secondsRemaining = 120;
                        });
                        startTimer();
                      }
                    : null,
                child: Text("Resend OTP"))
          ],
        ),
      ),
    );
  }
}
