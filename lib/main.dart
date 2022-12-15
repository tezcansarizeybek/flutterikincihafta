import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hava Durumu"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Merhaba, Tezcan.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Text("Bugün hava 30C",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
              width: 400,
              height: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text("Ankara 15C",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ),
                  width: 100,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text("Burdur 28C",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ),
                  width: 100,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(5),
                          bottom: Radius.circular(20))),
                  child: Center(
                    child: Text("İzmir 35C",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ),
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

// class MainPage extends StatefulWidget {
//   MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   var _sayac = 0;

//   var _text = "Merhaba Dünya";

//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       _text = "Widget Derlendi";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Merhaba",
//             style: TextStyle(
//                 backgroundColor: Colors.red,
//                 color: Colors.orange,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold)),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(color: Colors.red),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(color: Colors.orange),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(color: Colors.blue),
//                   ),
//                 ),
//               ],
//             ),
//             Text(
//               "$_sayac",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "$_text",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _sayac++;
//                   });
//                 },
//                 child: Text("Sayaç Arttır")),
//             OutlinedButton(
//                 onPressed: () {
//                   setState(() {
//                     _text = "Görüşürüz";
//                   });
//                 },
//                 child: Text("Yazı Değiştir")),
//             TextButton(onPressed: () {}, child: Text("Butona Bas")),
//             IconButton(onPressed: () {}, icon: Icon(Icons.add))
//           ],
//         ),
//       ),
//     );
//   }
// }
