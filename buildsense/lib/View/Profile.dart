import 'package:buildsense/View/Changer.dart';
import 'package:buildsense/View/Information.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding:  EdgeInsets.all(18.0),
            child:  Align(
              alignment: Alignment.bottomLeft,
              child:  Text("COMPTE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
          ),
          const SizedBox(height: 15,),
          ListTile(
            title: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const Information()));
              },
              child: const Text(
                'Gérer mes informations',
                style: TextStyle(fontSize: 18),
              ),
            ),
            leading: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const Changer()));
              },
              child: const Text(
                'Changer mon mot de passe',
                style: TextStyle(fontSize: 18),
              ),
            ),
            leading: const Icon(
              Icons.update,
              color: Colors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) =>const  Information()));
              },
              child: const Text(
                'Partager le profile',
                style: TextStyle(fontSize: 18),
              ),
            ),
            leading: const Icon(
              Icons.flare_outlined,
              color: Colors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
            
             const Padding(
            padding:  EdgeInsets.all(18.0),
            child:  Align(
              alignment: Alignment.bottomLeft,
              child:  Text("SUPPORT",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
          ),
          const SizedBox(height: 5),
          ListTile(
            title: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const Information()));
              },
              child: const Text(
                'Signaler un probléme',
                style: TextStyle(fontSize: 18),
              ),
            ),
            leading: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const Information()));
              },
              child: const Text(
                'Centre d aide',
                style: TextStyle(fontSize: 18),
              ),
            ),
            leading: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) =>const  Information()));
              },
              child: const Text(
                'déconnexion',
                style: TextStyle(fontSize: 18),
              ),
            ),
            leading: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
            trailing: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
