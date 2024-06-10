import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  State<Reminder> createState() => _ReminderState();
}

var dropdownvalue;
const items = ['Cats', 'Dogs', 'Birds', 'Hamsters', 'Fish'];

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/icons/pets5.jpg"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: const Text("Select"),
                        value: dropdownvalue,
                        isDense: true,
                        onChanged: (newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                          // ignore: avoid_print
                          print(dropdownvalue);
                        },
                        items: items.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        iconSize: 42.0,
                        iconEnabledColor: Colors.black,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/feline_cat.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'panleukopenia',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog1(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/rhinotracheitis.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'rhinotracheitis',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog2(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/caliciviruses.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'caliciviruses',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog3(context);
                      },
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/RabiesCats.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Rabies',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog4(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/leukemiaCats.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'leukemia',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog5(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Chlamydophila.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Chlamydia',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog6(context);
                      },
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Leptospirosis.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Leptospirosis',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog7(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Kennelcough.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Kennelcough',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog8(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Hepatitis.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Hepatitis',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog9(context);
                      },
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/parvo.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Parvo',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog10(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Distemper.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Distemper',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog11(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/RabiesDogs.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Rabies ',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog12(context);
                      },
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/polyomavirus.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'polyoma',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog13(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Bird Flu.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Bird Flu',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog14(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                width: 70,
                                height: 70,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/infections/Tularemia.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Tularemia',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog15(context);
                      },
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 0.5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Protozoa.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Protozoa',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog16(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/infections/Ichthyobodo.jpg"),
                                    ),
                                  )),
                            ),
                            Text(
                              'Ichthyobodo',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog17(context);
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/icons/Test2.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                width: 70,
                                height: 70,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/infections/salmonis.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'salmonis',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        showAlertDialog18(context);
                      },
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 0.5,
                ),
              ]),
        ),
      ),
    );
  }
}

showAlertDialog1(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "panleukopenia in Cats",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
    content: SingleChildScrollView(
      child: const Text(
        "Feline panleukopenia (also called feline distemper) is a highly contagious, potentially fatal disease of cats caused by the feline panleukopenia virus (FPV, also called feline parvovirus). Kittens are most severely affected. Despite the names used to describe feline panleukopenia, the disease is not to be confused with canine distemper or canine parvovirus infection, which are caused by different viruses. To maintain protection, a booster dose of the combination vaccine is recommended at 6 months of age, with additional boosters every year (intranasal vaccine) or every 3 years (injectable vaccine) afterward. If your adult cat hasn't been vaccinated yet, or is overdue for some vaccinations, it's not too late.",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialog2(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Rhinotracheitis in Cats",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Initial signs of FVR include coughing, sneezing, nasal discharge, conjunctivitis, and sometimes fever (up to 106) and loss of appetite. These usually resolve within four to seven days, but secondary bacterial infections can cause the persistence of clinical signs for weeks.Frontal sinusitis and empyema can also result.Studies have shown a duration of immunity of this vaccine to be at least three years",
      style: TextStyle(
        fontSize: 15,
      ),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog3(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Caliciviridae in Cats",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Feline calicivirus is a virus that is an important cause of upper respiratory infections and oral disease in cats. This virus infects cats throughout the world and can cause disease in both domestic and exotic cat species.Anti-inflammatory medication may be administered by your veterinarian (a one-time injection) to relieve symptoms of lameness. Cats that have persistent ulcers may benefit from treatments that support the immune system.Cats with nasal or airway congestion may benefit from increased environmental humidification, such as being taken into a steamy bathroom for 10-15 minutes several times per day (see handout “Techniques for Nebulization and Coupage in Cats” for further information). ",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog4(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Rabies in Cats",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Rabies is a viral disease that is nearly always fatal in affected animals, including cats. The good news is that you can prevent rabies in your cat with a simple vaccine. It’s always a good idea to ensure your cats are current on their vaccinations.This vaccine is only given once every three years after the initial one-year booster.",
      style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog5(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Leukemia in Cats",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: SingleChildScrollView(
      child: const Text(
          "Feline leukemia virus is a common disease that affects about 2% of cats in the United States. It is spread cat-to-cat and leads to the destruction of the cat’s white blood cells and immune system.The current recommendations are to vaccinate ALL cats against feline leukemia until 1 year of age. After this age, only outdoor cats (or those exposed to the outdoors unsupervised) should continue to receive annual boosters.",style: TextStyle(
        fontSize: 15,
      ),),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog6(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Chlamydophila in Cats",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Cats that have developed this infection will often exhibit traditional signs of an upper respiratory infection, such as watery eyes, runny nose, and sneezing. With treatment, the prognosis is positive.Your veterinarians will take a sample of the eye discharge, also referred to as a conjunctival scraping or swabbing, in order to have a culture of the fluid done to determine what the source of the illness is. If it is believed that pneumonia is present, an X-ray of your cat's lungs will be performed to check for the presence of fluid.",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog7(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Leptospirosis in Dogs",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Dogs can become infected with leptospirosis in several ways, including contact with infected urine, urine-soaked soil or bedding material, water containing the bacteria, open wounds, bites, reproductive fluids, and even ingestion of infected tissues.Dogs will initially need to be stabilized and treated at the veterinary hospital.At the hospital, antibiotics like penicillin G or ampicillin will often be given as an injectable.",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog8(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Kennelcough in Dogs",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Kennel cough is a common cause of coughing in dogs—especially in those that have been to the groomer, a boarding facility, or dog parks.  Kennel cough, also known as canine infectious respiratory disease (CIRD) or infectious tracheobronchitis, is a highly contagious respiratory disease in dogs. Dogs can develop kennel cough approximately two to 14 days after exposure.For mild cases of kennel cough, treatment may only include supportive care, which focuses on rest, nutrition, and hydration.Your dog’s airways can dry out from all the coughing. Keeping them in the bathroom while you shower is a good way to help them keep their airways moist. Adding a humidifier to the room they sleep in may also be beneficial.",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog9(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Hepatitis in Dogs",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Hepatitis is defined as inflammation of the liver. As a specific disease, infectious canine hepatitis (ICH) is a viral infection caused by a member of the adenovirus family. Other members of the dog family (e.g., foxes), as well as otters and bears, can be infected, but the ICH virus is harmless to people.As with most viral infections, there is no specific treatment. Antibiotics are ineffective against viruses but may help to treat secondary bacterial infections. Treatment is aimed at reducing symptoms and giving time for the dog's immune system to respond. This includes hospitalization, intravenous fluids, and medications to reduce the severe symptoms.",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog10(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Parvo in Dogs",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Canine parvovirus (CPV, or commonly referred to as “parvo”) is one of the most serious viruses that dogs can get. Thankfully, it is very preventable with proper vaccination.Canine distemper/adenovirus-2 (hepatitis)/parvovirus/parainfluenza vaccine (given as one vaccine, commonly referred to as DA2PP, DHPP, or DAPP)",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog11(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Distemper in Dogs",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content:  SingleChildScrollView(
      child: Text(
          "Distemper is a highly contagious viral disease of domestic dogs and other animals, such as ferrets, skunks, and raccoons. It is an incurable, often fatal, multisystemic (affecting multiple organs) disease that affects the respiratory, gastrointestinal, and central nervous systems. Distemper is caused by the canine distemper virus (CDV).As with most viral infections, there is no specific treatment for distemper. Antibiotics (e.g., amoxicillin, ampicillin, or doxycycline) are not effective against viruses but help control the secondary bacterial infections that often occur with distemper. The treatment for distemper is aimed at reducing the intensity of signs and symptoms. This is accomplished with hospitalization to provide the patient with intensive nursing care, intravenous fluid therapy, and symptomatic treatment for the vomiting, diarrhea, cough, etc. Anti-seizure medications (e.g., diazepam or phenobarbital) may be required in some cases.",style: TextStyle(
        fontSize: 15,
      ),),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog12(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Rabies in Dogs",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content:  Text(
        "While it’s preventable and even treatable, it must be caught early on. Once the symptoms of rabies appear, the virus is fatal. Unfortunately, there is only one way to 'test' for rabies in animals and that test requires the death of the animal so its brain can be tested. THis is why keeping your pet vaccinated against rabies is so critical.Rabies is not easily diagnosed by a blood test. To be 100% accurate, testing requires a biopsy of brain tissue, so it can’t be completed until the animal has died.Once symptoms appear, there’s no way to treat rabies in dogs. Unfortunately, if your veterinarian suspects rabies, your dog may be euthanized since they could spread the virus.  ",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog13(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Polyomavirus in Birds",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: const Text(
        "Avian polyomavirus infection (APV) of pet birds belongs to the family Polyomaviridae. APV can cause benign feather lesions in budgies, slow crop emptying in weanling parrots, hemorrhages on the skin, or acute death. Species particularly susceptible to APV infection include budgies, Eclectus parrots, Caiques, and Hawkhead parrots.There is no definitive treatment for APV. Birds with mild hemorrhaging might benefit from vitamin K injections and supportive veterinary care. Often, the disease progresses so quickly that no treatment will be effective.",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog14(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Avian flu in Birds",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: Text(
        "Avian flu affects the respiratory system (nose, mouth and airways), digestive system and/or nervous system. The disease occurs in poultry raised on farms (chickens, ducks and turkeys) and nearly all species of birds found in the wild, including ducks, doves, pigeons, geese, seagulls and storks. Birds of prey and other predators can also contract the virus by eating birds that fell ill or died of avian flu.There are no effective treatments for bird flu. In mild cases, especially in pet birds, treatment consists of relieving symptoms. This can include:Antibiotics for secondary bacterial infections or pneumonias Cough suppressants Medications that decrease mucous productionProviding heat sourcesKeeping the environment extra clean ",style: TextStyle(
      fontSize: 15,
    ),),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog15(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Tularemia in Hamsters",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content:  SingleChildScrollView(
      child: Text(
          "Tularemia is a rare infection in hamsters caused by the bacteria Francisella tularensis. This disease spreads quickly and can lead to severe complications such as blood poisoning. In fact, once a hamster contracts the bacteria from an infected tick or mite, it often dies within 48 hours.Though rare in hamsters, tularemia is contracted from ticks or mites infected with the bacteria Francisella tularensis.Diagnosis is usually made during a postmortem examination. Blood will be discovered in the liver and the liver, spleen, and lymph nodes will be enlarged. If X-rays of the hamster are taken before the infection becomes fatal, your veterinarian may also notice an enlarged liver and spleen.Unfortunately, there is no treatment for tularemia disease in hamsters.",style: TextStyle(
        fontSize: 15,
      ),),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog16(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Protozoa in Hamsters",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content:  SingleChildScrollView(
      child: Text(
          "Protozoa are single-celled organisms that are capable of causing disease in hamsters, the most common of which is protozoal gastroenteritis. Although healthy hamsters often carry protozoa in their digestive tracts without adverse reactions, hamsters that are young or stressed may develop intestinal infections and diarrhea as a result of a weakened immune system.Protozoal infections are treatable with the aid of anti-protozoal drugs. However, preventing the infection from occurring in the first place is more practical than treating to cure it.There are certain anti-protozoal drugs like metronidazole that can be given orally, dissolved in the drinking water, or through injection to control the protozoal infection. If your hamster is dehydrated, a veterinarian may also recommend providing fluids and electrolytes to the animal.",style: TextStyle(
        fontSize: 15,
      ),),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog17(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "Ichthyobodo in Fish",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content:  SingleChildScrollView(
      child: Text(
          "Whether fish live in an aquarium, a pond, or in saltwater, they are at risk for being infected by parasites. Some parasites are particular to the type of water, but one parasite that infects fish living in all three types of water is the protozoan parasite Ichthyobodo.The most common instigator of this protozoan parasite infection is stress due to poor sanitary conditions and overcrowding of the aquarium, tank or pond. Stress leads to a weakened immune system, which leads to vulnerability to this parasite. Even overfeeding can stress the fish and lead to parasitic infection.You will need to see a fish health specialist, who will microscopically diagnose the infection before treating it. Under the microscope, the parasites have the appearance of a flickering flame.Infected fish are treated in water that has been medicated with formalin, salt, and potassium permanganate or copper sulfate. (Do not attempt to treat your fish with any of these chemicals without professional guidance.)In order to successfully treat your fish and prevent a reoccurrence of the infection, the sanitation and living conditions of the fish should be corrected immediately.",style: TextStyle(
        fontSize: 15,
      ),),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog18(BuildContext context) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Set Reminder",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text(
      "salmonis in Fish",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    content: SingleChildScrollView(
      child: const Text(
          "Sea lice or salmon louse is the parasite with the highest economic impact on aquaculture of Atlantic salmon (Salmo salar) globally, which produced about 2.07 million tons (2014). Costs of sea lice are due to decrease in fish growth rate, increased feed conversion rate, and lower market value of fish with skin injuries plus the cost of treatment estimated at 305 million euros (2006). While sea lice includes Lepeoptheirus salmonis and Caligus elongatus, with Caligus rogercresseyi occurring in Canada and Chile or C. teres in Chile, L. salmonis is the key parasite on account of its specificity to salmonids, larger size, and high abundance. Severe infestations of L. salmonis produce deep erosions of the epidermis, dermis, and skeletal muscle in farmed fish. Damages to fish include dermal epithelium loss, hemorrhage, elevated mucus production and loss, altered mucus biochemistry, necrosis of skin tissue with loss of the protection against osmoregulatory and pathogens.",style: TextStyle(
        fontSize: 15,
      ),),
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}