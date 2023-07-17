import 'package:buildsense/View/Forget.dart';
import 'package:flutter/material.dart';

import '../Utils/Colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? ischecked = false;
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Center(
              child: Image.asset(
                'images/logoConsR 2.png',
                width: 205,
                height: 76,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Image.asset('images/Salut.png'),
                    const SizedBox(height: 10),
                    Text(
                      "Heureux de veut voir !",
                      style: TextStyle(color: GrissColor),
                    )
                  ],

                  // Image.asset('images/Salut.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Email",
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
                        hintText: "Exemple@gmail.com",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Password",
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
                      controller: _PasswordController,
                      obscureText: true,
                      enableSuggestions: false,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Entrer votre mot passe",
                        suffix: Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: ischecked,
                            activeColor:Colors.black,
                            tristate: true,
                            onChanged: (newBool) {
                              setState(() {
                                ischecked = newBool;
                              });
                            }),
                            const Text("se souvenir avec moi",style: TextStyle(color: Colors.black,fontSize: 12),)
                      ],
                    
                    ),
                    const SizedBox(width: 10,),
                    Align(
                  alignment: Alignment.centerRight,
                  child:  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Forget()));
                    },
                    child: const  Text(
                      "Mot de passe oublie",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold,fontSize: 12),
                    ),
                  )),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: BlueColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Connexion",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "vous n'avez pas de compte ?",
                      style: TextStyle(color: inputColor),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
