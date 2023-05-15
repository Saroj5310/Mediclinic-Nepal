import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/appointment.dart';
import 'package:mediclinic_nepal/methods.dart';

class doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(' Doctors Consultants'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/achyut.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Achyut Raj Bhandari',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Orthopedics'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/ashish.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Ashish Pun',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('General Surgeon'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/bm.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. BM Kharel',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Dental Surgeon'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/brijesh.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Brijesh Sharma',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Eye Specialist'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/budhi.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Budhi Nath ADH',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Genaral Surgeon'),
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
                  leading: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/mani.jpg'),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Mani Prasad Gautam',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Seniour Consultant Cardiologist'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/narad.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Narad Prasad Thapaliya',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Surgery'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/nirmal.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Nirmal Lamichhane',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Surgical Oncologist, Urology'),
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
                    radius: 20,
                    backgroundImage: AssetImage('assets/shital.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Shital Adhikari',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('MBBS, MD Medicine'),
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
                    radius: 28,
                    backgroundImage: AssetImage('assets/sudeep.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Sudeep Man Vaidya',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Orthopaedic Arthroscopy'),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: IconButton(
                        color: Colors.indigo[800],
                        onPressed: () {},
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
                    radius: 26,
                    backgroundImage: AssetImage('assets/suresh.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Suresh Shrestha',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('MBBS, MD, Internal Medicine'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/sushil.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Sushil Thapa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Orthopedic Surgeon'),
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
                    radius: 30,
                    backgroundImage: AssetImage('assets/tirtha.jpg'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'DR. Tirtha Raj Bhandari',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Interventional, Pain Specilist'),
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
