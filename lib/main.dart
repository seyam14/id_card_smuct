import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 370,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(3),),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://i.ibb.co/xfxNn6G/SMUCT-Logo.png',
                  scale: 5,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 3),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(

                          radius: 45,

                          foregroundImage: NetworkImage('https://i.ibb.co/GJr7nRF/seyam.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Seyam"),
                    Text(
                      "ID: 201071014",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      "REG.NO.: 201754050",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text("Dept.of Computer Science & Engineering (B.Sc. CSE)",
                     style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Blood Group: O+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.amber,
                thickness: 3,
              ),
              const Text(
                "Registrar",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}