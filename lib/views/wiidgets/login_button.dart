import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;

  const LoginButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      
      onPressed: isLoading ? null : onPressed,
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            fixedSize: WidgetStateProperty.all(
              
              const Size(390, 50),
            ),
            
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
      child: isLoading
          ? const CircularProgressIndicator()
          : const Text(' Login'),
    );
  }
}
