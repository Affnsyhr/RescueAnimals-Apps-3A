import 'package:flutter/material.dart';

class RescueScreen extends StatefulWidget {
  @override
  _RescueScreenState createState() => _RescueScreenState();
}

class _RescueScreenState extends State<RescueScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _namaPemilik, _jenisHewan, _hewan, _lokasiTerakhirHilang, _noTlp;
  List<String> _jenisHewanList = ['Reptile', 'Mamalia', 'Unggas'];
  List<String> _hewanList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rescue'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'NAMA PEMILIK'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter nama pemilik';
                  }
                  return null;
                },
                onSaved: (value) => _namaPemilik = value,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'JENIS HEWAN'),
                value: _jenisHewan,
                onChanged: (value) {
                  setState(() {
                    _jenisHewan = value;
                    _hewanList = [];
                    if (value == 'Reptile') {
                      _hewanList = ['Kura-Kura', 'Kadal', 'Ular'];
                    } else if (value == 'Mamalia') {
                      _hewanList = ['Sugar Glider', 'Kucing', 'Anjing'];
                    } else if (value == 'Unggas') {
                      _hewanList = ['Ayam', 'Bebek', 'Burung'];
                    }
                  });
                },
                items: _jenisHewanList.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'HEWAN'),
                value: _hewan,
                onChanged: (value) => setState(() => _hewan = value),
                items: _hewanList.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'LOKASI TERAKHIR HILANG'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter lokasi terakhir hilang';
                  }
                  return null;
                },
                onSaved: (value) => _lokasiTerakhirHilang = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'NO TLP'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter no tlp';
                  }
                  return null;
                },
                onSaved: (value) => _noTlp = value,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    // TODO: handle form submission
                    print('Form submitted');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
