import 'package:flutter/material.dart';

class AnimatePage extends StatefulWidget {
  const AnimatePage({super.key});

  @override
  State<AnimatePage> createState() => _AnimatePageState();
}

class _AnimatePageState extends State<AnimatePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('show'),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('close'),
                        
                      ),
                    ],
                    contentPadding:const EdgeInsets.all(20.0),
                    content: const Text('sms sent succcessfuly'),
                  ));
        },
      ),
    );
  }
}
