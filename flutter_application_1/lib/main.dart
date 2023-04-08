import 'package:flutter/material.dart';

void main() {
  runApp(Misbha());
}

class Misbha extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Misbha App',
      home: MisbhaPage(title: 'Misbha App'),
    );
  }
}

class MisbhaPage extends StatefulWidget {
  const MisbhaPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MisbhaState createState() => _MisbhaState();
}

class _MisbhaState extends State<MisbhaPage> {
  int counter = 0;
  String name = "سبحان الله";
  int roll = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    if (counter == 15) {
      name = "سبحان الله";
    }
    if (counter == 28) {
      name = "الحمد لله";
    }
    if (counter == 35) {
      name = " لا اله الا الله";
    }
    for (int i = 0; i < 50; i++) {
      if (counter == 46) {
        counter = 0;
        roll = i + roll;
        roll++;
        name = "سبحان الله";
      }
    }

    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("فَذَكِّرْ إِن نَّفَعَتِ الذِّكْرَى",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal,
          centerTitle: true,
          flexibleSpace: const Image(
            image: AssetImage('assets/images/isla.png'),
            fit: BoxFit.cover,
          ),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/isla.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2, 2),
                          blurRadius: 2.2,
                        )
                      ]),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(45),
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(15)),
                      color: Colors.white),
                  child: const Text(' عدد التسبيحات ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.redAccent,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  " $counter",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2, 2),
                          blurRadius: 2.2,
                        )
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(129, 139, 13, 6),
                      shadowColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      minimumSize: const Size(150, 150),
                    ),
                    child: const Text(
                      "اضغط",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "الدورة رقم $roll:",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          roll = 0;
                          counter = 0;
                        });
                      },
                      child: const Text(
                        "البدء من جديد",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
