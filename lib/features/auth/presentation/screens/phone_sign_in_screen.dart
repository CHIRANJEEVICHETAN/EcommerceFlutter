
import 'package:avymart/core/routes/app_router.dart';
import 'package:avymart/core/services/auth_service.dart';
import 'package:avymart/core/utils/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneSignInScreen extends StatefulWidget {
  const PhoneSignInScreen({super.key});

  @override
  State<PhoneSignInScreen> createState() => _PhoneSignInScreenState();
}

class _PhoneSignInScreenState extends State<PhoneSignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _otpController = TextEditingController();
  final _authService = AuthService();
  String? _verificationId;
  bool _otpSent = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  Future<void> _sendOtp() async {
    if (_formKey.currentState!.validate()) {
      await _authService.sendOtp(
        phoneNumber: '+91${_phoneController.text}',
        context: context,
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            _verificationId = verificationId;
            _otpSent = true;
          });
        },
        verificationCompleted: (PhoneAuthCredential credential) async {
          final user = await _authService.verifyOtp(
              verificationId: _verificationId!,
              smsCode: credential.smsCode ?? '');
          if (!mounted) return;
          if (user != null) {
            Navigator.pushReplacementNamed(context, AppRouter.homeRoute);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Failed to sign in')),
            );
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.message ?? 'Failed to send OTP')),
          );
        },
      );
    }
  }

  Future<void> _verifyOtp() async {
    if (_formKey.currentState!.validate()) {
      final user = await _authService.verifyOtp(
        verificationId: _verificationId!,
        smsCode: _otpController.text,
      );
      if (!mounted) return;
      if (user != null) {
        Navigator.pushReplacementNamed(context, AppRouter.homeRoute);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to sign in')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in with Phone'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Text(
                  'Enter Your Phone Number',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'We will send you an OTP to verify your number',
                  style: textTheme.titleMedium,
                ),
                const SizedBox(height: 48),
                if (!_otpSent)
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone_iphone),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      if (!Validators.isValidPhone(value)) {
                        return 'Please enter a valid 10-digit phone number';
                      }
                      return null;
                    },
                  )
                else
                  TextFormField(
                    controller: _otpController,
                    decoration: const InputDecoration(
                      labelText: 'OTP',
                      prefixIcon: Icon(Icons.password),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the OTP';
                      }
                      return null;
                    },
                  ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _otpSent ? _verifyOtp : _sendOtp,
                    child: Text(_otpSent ? 'VERIFY OTP' : 'SEND OTP'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
