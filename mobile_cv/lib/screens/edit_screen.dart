import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _fullNameController =
      TextEditingController(text: "Ibitowa Ifeoluwa Samuel");
  final _slackUsernameController =
      TextEditingController(text: "Samuel Ibitowa");
  final _githubHandleController = TextEditingController(text: "GM-Samuelstein");
  final _personalBioController =
      TextEditingController(text: "Mobile Developer Intern at HNGX");

  @override
  void dispose() {
    _fullNameController.dispose();
    _slackUsernameController.dispose();
    _githubHandleController.dispose();
    _personalBioController.dispose();
    super.dispose();
  }

  onDone() {
    Navigator.pop(context, [
      _fullNameController.text,
      _slackUsernameController.text,
      _githubHandleController.text,
      _personalBioController.text,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Edit'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              fullNameInputField(),
              slackUsernameInputField(),
              githubHandleInputField(),
              personalBioInputField(),
              Center(
                child: ElevatedButton(
                  child: const Text('Done'),
                  onPressed: () {
                    // Navigate to home screen when tapped.
                    onDone();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget fullNameInputField() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Full Name',
            style: TextStyle(),
          ),
          TextField(
            controller: _fullNameController,
            cursorColor: Colors.blueGrey,
            decoration: const InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget slackUsernameInputField() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Slack Username',
            style: TextStyle(),
          ),
          TextField(
            controller: _slackUsernameController,
            cursorColor: Colors.blueGrey,
            decoration: const InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget githubHandleInputField() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'GitHub Handle',
            style: TextStyle(),
          ),
          TextField(
            controller: _githubHandleController,
            cursorColor: Colors.blueGrey,
            decoration: const InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget personalBioInputField() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Personal Bio',
            style: TextStyle(),
          ),
          TextField(
            controller: _personalBioController,
            cursorColor: Colors.blueGrey,
            maxLines: 6,
            decoration: const InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }
}
