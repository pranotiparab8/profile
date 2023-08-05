import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.network(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.fill,
                'https://thumbs.dreamstime.com/b/aerial-view-lago-antorno-dolomites-lake-mountain-landscape-alps-peak-misurina-cortina-di-ampezzo-italy-reflected-103752677.jpg'),
            const Positioned(
                bottom: -50.0,
                child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://cdn.truelancer.com/user-picture/468601-5aa49efd0f889.jpg')))
          ],
        ),
        const SizedBox(height: 40),
        const ListTile(
            title: Center(
                child: Text(
              'Pranoti Parab',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )),
            subtitle: Center(
                child: Text('Flutter Developer',
                    style: TextStyle(fontFamily: 'Poppins')))),
        TextButton.icon(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.blue),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
          onPressed: () {},
          icon: const Icon(Icons.mail, color: Colors.white),
          label: const Text('Hire me', style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          title: Text('About Me', style: TextStyle(fontFamily: 'Poppins')),
          subtitle: Text('Data', style: TextStyle(fontFamily: 'Poppins')),
        ),
      ],
    );
  }
}
