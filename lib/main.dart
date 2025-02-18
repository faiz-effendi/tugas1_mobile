import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 24),
          backgroundColor: Colors.blue,
        ),

        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 12), // Kasih gap

            // AVATAR LINGKARAN
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profil.jpeg"),
              radius: 80,
            ),

            // NAMA DAN NIM
            SizedBox(height: 12), // Kasih gap
            Text(
              "Nandisya Faiz Effendi",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Text(
              "123220139",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black54),
            ),
            SizedBox(height: 12), // Kasih gap

            // BUTTON JEJER 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    "Tombol 1",
                    style: TextStyle(color: Colors.white),
                    ), 
                ),

                ElevatedButton(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    "Tombol 2",
                    style: TextStyle(color: Colors.white),
                    ), 
                ),

                ElevatedButton(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    "Tombol 3",
                    style: TextStyle(color: Colors.white),
                    ), 
                ),
              ],
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                primary: false,
                padding: const EdgeInsets.all(20),
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Image.asset("assets/images/flutter_logo.png", width: 48, height: 48,),
                    )  
                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Image.asset("assets/images/flutter_logo.png", width: 48, height: 48,),
                    )  
                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Image.asset("assets/images/flutter_logo.png", width: 48, height: 48,),
                    )  
                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Image.asset("assets/images/flutter_logo.png", width: 48, height: 48,),
                    )  
                  ),
                  
        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
