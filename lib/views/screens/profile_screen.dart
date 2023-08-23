import 'package:flutter/material.dart';
import 'package:itistore/views/widgets/profile_listtile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- IMAGE
            SizedBox(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(
                  image: AssetImage('assets/images/user.png'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //email---------//
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 250, 240, 230),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Edite Profile",
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Divider(),

            /// -- MENU
            ProfileMenuWidget(
                title: "Developers",
                icon: Icons.person_2_outlined,
                onPress: () {
                  // Navigator
                }),
            ProfileMenuWidget(
              title: "Address",
              icon: (Icons.location_on),
              onPress: () {},
            ),

            ProfileMenuWidget(
              title: "Payment",
              icon: Icons.credit_card,
              onPress: () {},
            ),

            ProfileMenuWidget(
                title: "About Us",
                icon: Icons.info_outline,
                onPress: () {
                  // Navigator
                }),
            ProfileMenuWidget(
                title: "Reviews",
                icon: Icons.star_border_outlined,
                onPress: () {}),
            ProfileMenuWidget(
              title: "Logout",
              icon: Icons.logout_outlined,
              endIcon: false,
              onPress: () async {},
            )
          ],
        ),
      ),
    );
  }
}
//
// 
/*import 'package:path/path.dart' ;
import 'package:flutter_application_2/screens/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/R.f29406735baf0861647a78ae9c4bf5af?rik=GKTBhov2iZge9Q&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_206976.png&ehk=gCH45Zmryw3yqyqG%2fhd8WDQ53zwYfmC8K9OIkNHP%2fNU%3d&risl=&pid=ImgRaw&r=0'),
              ),
              const SizedBox(
                height: 20,
              ),
              itemprofile('Name', 'Land shoes', CupertinoIcons.person),
              const SizedBox(
                height: 10,
              ),
              itemprofile('Address', 'Arab Mall', CupertinoIcons.location),
              const SizedBox(
                height: 10,
              ),
              itemprofile('About As', '', CupertinoIcons.info_circle),
              const SizedBox(
                height: 10,
              ),
              itemprofile('Payment', '', CupertinoIcons.creditcard),
              const SizedBox(
                height: 10,
              ),
              itemprofile('Reviews', '', CupertinoIcons.star),
              const SizedBox(
                height: 10,
              ),
              itemprofile('Developers', '', CupertinoIcons.person),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Update Profile')),
              )
            ],
          ),
        ),
      ),
    );
  }

  itemprofile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.purple.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
            )
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.arrow_back_ios)),
        tileColor: Colors.white,
      ),
    );
  }
}*/
