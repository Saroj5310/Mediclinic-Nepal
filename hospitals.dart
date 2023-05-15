import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/methods.dart';

import 'appointment.dart';

class hospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Hopitals'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/chitwanhospital.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Bharatpur Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-597003 '),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/central.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Bharatpur Central Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-524223'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/allhos.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Bharatpur Samudayik Hospital LTD',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-523200 '),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/mankamana.png'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Manakamana Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-520180 '),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/cmc.png'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Chitwan Medical College',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-532933'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/ns.jpeg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Narayani Samudayik Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-493211'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/allhos.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Shree Puspanjali Hospital PVT LTD',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-528480 '),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/dev.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Dev Hospital PVT LTD',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-521344 '),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/nationalcity.jpeg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'National City Hospital LTD',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-523411'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/allhos.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Bharatpur Eye Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-520333'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/saptagandaki.jpeg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Saptagandaki Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/asha.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Asha Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-525355'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/allhos.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Bharatpur Family Planning Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/allhos.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Chitwan OM Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-521066'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/allhos.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'OM Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-527673'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 90,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/maulakalika.jpeg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Maulakalika Hospital',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Phone:056-525798'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appoint())));
                        },
                        icon: Icon(
                          FontAwesomeIcons.bookMedical,
                          size: 35,
                        )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
