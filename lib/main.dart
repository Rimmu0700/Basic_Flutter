import 'package:flutter/material.dart';
import 'RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Widget"),
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.grey,
        actions: [
          TextButton(
            onPressed: () { 
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            child: const Text("Register", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text("Start",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          
            Container(
              height: 200,
              width: 200,
              color: Colors.cyanAccent,
              alignment: Alignment.center,
              child: const Text(
                "Inside Container",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ), 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Text('Bintang 1', style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Icon(Icons.star_half, color: Colors.yellow, size: 50),
                Text('Bintang 2', style: TextStyle(fontSize: 20)),
              ],
            ), 

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 40, color: Colors.lightBlue),
                Icon(Icons.settings, size: 40, color: Colors.green),
                Icon(Icons.settings, size: 40, color: Colors.grey),
              ],
            ), 

            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.greenAccent[50],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Nested Column"),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.coffee, size: 40, color: Colors.brown),
                      Icon(Icons.fastfood, size: 40, color: Colors.orange),
                      Icon(Icons.local_drink, size: 40, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ), 

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Text("From Da Internet", style: TextStyle(fontSize: 18)),
              ],
            ), 

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Please Click The Button Below', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    debugPrint("Button Clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text("Click Me!", style: TextStyle(color: Colors.white)), 
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}