import 'package:app/page/addpatient.dart';
import 'package:flutter/material.dart';

class AddConsul extends StatefulWidget {
  const AddConsul({super.key});

  @override
  State<AddConsul> createState() => _AddConsulState();
}

class _AddConsulState extends State<AddConsul> {
  int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FDFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF50C2C9),
        title: const Center(child: Text('Ajouter consultation')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 26, vertical: 8),
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[200],
                        ),
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.blue[800],
                              size: 25,
                            ),
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: 'Item 1',
                              child: Text('Item 1'),
                            ),
                            DropdownMenuItem(
                              value: 'Item 2',
                              child: Text('Item 2'),
                            ),
                          ],
                          onChanged: (value) {
                            // Gérer la sélection d'un élément de la liste déroulante ici
                          },
                          hint: const Text(
                            'Choisir un patient',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFCDE9F1),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.person_add,
                        color: Color(0xFF61D0D7),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => add_patient()),
                        );
                        // Gérer l'action du bouton ici
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              buildRadioButtonRow('oeil droite', 1),
              const SizedBox(height: 10),
              buildRadioButtonRow('oeil gauche', 2),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF50C2C9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(400, 60),
                ),
                onPressed: () {
                  // Action à exécuter lorsque le bouton est pressé
                },
                child: const Text(
                  "Enregistrer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRadioButtonRow(String text, int value) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedRadio = value;
              });
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedRadio == value
                    ? const Color(0xFF299BBE)
                    : const Color(0xFFCDE9F1),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: selectedRadio == value ? Colors.white : Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Visibility(
          visible: selectedRadio == value,
          child: IconButton(
            icon: const Icon(
              Icons.add_photo_alternate,
              size: 30,
              color: Colors.blue,
            ),
            onPressed: () {
              // Gérer l'action du bouton ici
            },
          ),
        ),
      ],
    );
  }
}
