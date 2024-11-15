import 'package:flutter/material.dart';

class FormScreen6 extends StatefulWidget {
  const FormScreen6({super.key});

  @override
  State<FormScreen6> createState() => _FormScreen6State();
}

class _FormScreen6State extends State<FormScreen6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectionRadio = '';
  String nama = '';
  String tampil = 'Selamat Datang';

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("$tampil"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
                controller: textEditingController,
                decoration: InputDecoration(
                    labelText: 'Masukan Nama',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
                controller: textEditingController,
                decoration: InputDecoration(
                    labelText: 'Masukan umur',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
                controller: textEditingController,
                decoration: InputDecoration(
                    labelText: 'Masukan alamat',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Jenis Kelamin : "),
                  Radio(
                      value: "Laki-Laki",
                      groupValue: selectionRadio,
                      onChanged: (value) {
                        setState(() {
                          selectionRadio = value.toString();
                        });
                      }),
                  Text("Laki-Laki"),
                  Radio(
                      value: "Perempuan",
                      groupValue: selectionRadio,
                      onChanged: (value) {
                        setState(() {
                          selectionRadio = value.toString();
                        });
                      }),
                  Text("Perempuan"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                  title: Text('Olahraga'),
                  value: olahraga,
                  onChanged: (value) {
                    setState(() {
                      if (olahraga == false) {
                        olahraga = true;
                      } else {
                        olahraga = false;
                      }
                    });
                  }),
              CheckboxListTile(
                  title: Text('Seni'),
                  value: seni,
                  onChanged: (value) {
                    setState(() {
                      if (seni == false) {
                        seni = true;
                      } else {
                        seni = false;
                      }
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              SwitchListTile(
                  title: Text('Lulus'),
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  }),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tampil = tampil + " " + nama;
                    });
                  },
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ],
          ),
        ));
  }
}
