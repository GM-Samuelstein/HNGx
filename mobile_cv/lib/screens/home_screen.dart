import 'package:flutter/material.dart';
import 'package:mobile_cv/model/cv_model.dart';
import 'package:mobile_cv/screens/edit_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CVModel myCv = CVModel(
    fullName: "Ibitowa Ifeoluwa Samuel",
    slackUsername: "Samuel Ibitowa",
    githubHandle: "GM-Samuelstein",
    personalBio: "Mobile Developer Intern at HNGx",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(color: Color(0xFF7DB5E0)),
            ],
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 4,),
            const Text(
              'Full Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(myCv.fullName, style: const TextStyle(fontSize: 24, overflow: TextOverflow.visible,)),
            const SizedBox(height: 4,),
            const Text(
              'Slack Username',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(myCv.slackUsername, style: const TextStyle(fontSize: 24, overflow: TextOverflow.visible,)),
            const SizedBox(height: 4,),
            const Text(
              'GitHub Handle',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(myCv.githubHandle, style: const TextStyle(fontSize: 24, overflow: TextOverflow.visible,)),
            const SizedBox(height: 4,),
            const Text(
              'Personal Bio',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(myCv.personalBio, style: const TextStyle(fontSize: 24, overflow: TextOverflow.visible,)),
            ElevatedButton(
              child: const Text('Edit'),
              onPressed: () async {
                // Navigate to edit screen when tapped.
                final List result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditScreen()),
                );

                setState(() {
                  CVModel updatedCv = myCv.copyWith(
                    fullName: result.elementAt(0),
                    slackUsername: result.elementAt(1),
                    githubHandle: result.elementAt(2),
                    personalBio: result.elementAt(3),
                  );
                  myCv = updatedCv;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
