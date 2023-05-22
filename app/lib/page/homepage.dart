import 'package:app/page/listconsul.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FDFF),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(color: Color(0xFF50C2C9)),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  'Bienvenue ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Docteur Amina ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Passez un bon moment ',
                  style: TextStyle(
                      color: Color(0xFF413737),
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
                const SizedBox(
                  height: 170,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        backgroundColor: Colors.grey[300],
                        minimumSize: const Size(300, 60)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list_consul()),
                      );
                    },
                    child: Text(
                      " liste des consultations ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[500]),
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        backgroundColor: Colors.grey[300],
                        minimumSize: const Size(300, 60)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list_consul()),
                      );
                    },
                    child: Text(
                      " liste des patients",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[500]),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
