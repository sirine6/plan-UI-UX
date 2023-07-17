import 'package:buildsense/Widget/NavBar.dart';
import 'package:flutter/material.dart';

import '../Utils/Colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool? ischecked = false;
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _NumeroController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    countryController.text = "+888";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Center(
              child: Image.asset(
                'images/logoConsR 2.png',
                width: 205,
                height: 76,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "créer un compte",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Rejoingez BuildSence maintenant !",
                      style: TextStyle(color: GrissColor),
                    ),
                  ),
                )
              ],

              // Image.asset('images/Salut.png'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Email Adresse",
                  style: TextStyle(
                      color: bluesColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: GrisColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _EmailController,
                  decoration: const InputDecoration(
                    hintText: "Entre votre  adresse email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Numéro de téléphone",
                  style: TextStyle(
                      color: bluesColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: GrisColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      controller: countryController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Text(
                    "|",
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Entrez votre numéro de télephone",
                    ),
                  ))
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "mot de passe",
                  style: TextStyle(
                      color: bluesColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: GrisColor),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _PasswordController,
                  obscureText: true,
                  enableSuggestions: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Entrer votre mot de passe",
                    suffix: Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: ischecked,
                        activeColor: Colors.black,
                        tristate: true,
                        onChanged: (newBool) {
                          setState(() {
                            ischecked = newBool;
                          });
                        }),
                    const Text(
                      "se souvenir avec moi",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: BlueColor, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const NavBar())));
                    },
                    child: const Text(
                      "s'inscrire",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
