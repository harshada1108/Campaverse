import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class StudentCouncil extends StatelessWidget {
  final List<String> images = [
    'images/StudentCouncilImages/ZEE_9836 - HRUSHIKESH JADHAV.jpg',
    'images/StudentCouncilImages/photo (gate) - MT22STR010_VINAYAK.jpg',
    'images/StudentCouncilImages/IMG_1239 - Minza Shahid.jpg',
    'images/StudentCouncilImages/WhatsApp Image 2023-08-11 at 2.27.33 PM - BT20MEC002_ADITYA.jpeg',
    'images/StudentCouncilImages/IMG_20230812_153514 - Dhanesh Choudhary.jpg',
    'images/StudentCouncilImages/professsional_photo_white_bg - BT20EEE019_Nikhil_Bhisle.jpg',
    'images/StudentCouncilImages/IMG_7347 - Satyan Patil.jpg',
    'images/StudentCouncilImages/IMG-20230423-WA0011 - Samruddhi Wagh.jpg',
    'images/StudentCouncilImages/SAVE_20230811_201702 - GANJI NAYAN.jpg',
    'images/StudentCouncilImages/IMG_20230811_095709 - Mrunal Sonawane.jpg',
        'images/StudentCouncilImages/20230208001610_IMG_2846 - Ayush Chavan.JPG',
    'images/StudentCouncilImages/SAVE_20220618_154850 - BT20CIV043 Alisha Hatalkar.jpg',
    'images/StudentCouncilImages/IMG_20230811_180422 - Yashasvi Therkar.jpg',
    'images/StudentCouncilImages/IMG_20230811_095304 - BT20MEC018 BRAHMANAND Khandale.jpg',
    'images/StudentCouncilImages/IMG20200719182726 - Gaurav Mishra.jpg'

  ];
  final List<String> councilposts = [
    'GENERAL SECRETARY',
    'P.G ACADEMIC AFFAIRS SECRETARY',
    'UG ACADEMIC AFFAIRS SECRETARY',
    'MAGAZINE AND LITERARY SECRETARY',
    'TRAINING AND PLACEMENT SECRETARY',
    'TECHNICAL AFFAIRS SECRETARY',
    'SPORTS SCERETARY',
    'CULTURAL SECRETARY',
    'PG SPORTS SEC. & CULTURAL AFFAIRS',
    'LADIES REPRESENTATIVE',
    'HOSTEL AFFAIRS SECRETARY (BOYS)',
    'HOSTEL AFFAIRS SECRETARY (GIRLS)',
    'SOCIAL AFFAIRS SECRETARY',
    'ALUMNI SECRETARY',
    'ACADEMIC AFFAIRS SECRETARY',
  ];
  final List<String> councilnames = [
    'HRUSHIKESH BHAGWAN JADHAV',
    'VINAYAK',
    'MINZA SHAHID',
    'ADITYA MISHRA',
    'DHANESH CHAUDHARY',
    'BHISLE NIKHIL GANGARAM',
    'PATIL SATYAN SHARAD',
    'SAMRUDDHI ATUL WAGH',
    'GANJI NAYAN CHANDRAKANT',
    'SONAWANE MRUNAL KISHOR',
    'CHAVAN AYUSH BHAURAO',
    'HATALKAR ALISHA AMIT',
    'YASHASVI THERKAR',
    'BRAHMANAND C. KHANDALE',
    'GAURAV KUMAR MISHRA',
  ];
  final List<String> enrollmentno = [
    'BT20MEC122',
    'MT22STR010',
    'BA20ARC063',
    'BT20MEC002',
    'BT20CSE034',
    'BT20EEE019',
    'BT20CSE093',
    'BT20MIN040',
    'MT22ENV015',
    'BT20MME092',
    'BT20MIN016',
    'BT20CIV043',
    'BT20CME115',
    'BT20MEC018',
    'DA20ARC003',
  ];
  final List<String> idno = [
    '26439',
    '28280',
    '26063',
    '26397',
    '26235',
    '26254',
    '25620',
    '26167',
    '28478',
    '26341',
    '26182',
    '25973',
    '26052',
    '26435',
    '26522',
  ];


  StudentCouncil() {
    frontWidgets = List.generate(
      councilposts.length,
          (index) => FrontCardWidget(
        imageUrl: images[index],
        title: councilposts[index],
      ),
    );
    backWidgets = List.generate(
      councilnames.length,
          (index) =>
          BackCardWidget(
            name : councilnames[index],
            enrollment: enrollmentno[index],
            id: idno[index],
          ),
    );

  }

  late List<Widget> frontWidgets;

  late List<Widget> backWidgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('STUDENT COUNCIL 2023-2024',style: TextStyle(color: Colors.white70),),
        backgroundColor: Color.fromRGBO(10, 1, 11, 1),elevation: 0,titleSpacing: 2,
      centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image(
            image: AssetImage('images/studentcouncil1.jpg'),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration:  BoxDecoration(
      gradient:  LinearGradient(
      begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(199, 113, 214, 1),
          Color.fromRGBO(28, 7, 81, 1),
          Color.fromRGBO(10, 1, 11, 1),
        ],
        stops: [0.03, 0.5, 0.87],
        transform: GradientRotation(135 * 3.14159265 / 180),
      ),
    ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                return FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: frontWidgets[index],
                  back: backWidgets[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class FrontCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;


  FrontCardWidget({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.deepPurple,
            backgroundImage: AssetImage(imageUrl),

          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: TextStyle(fontSize: 15,color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class BackCardWidget extends StatelessWidget {
  final String name ;
  final String enrollment ;
  final String id;


   BackCardWidget({super.key, required this.name, required this.enrollment, required this.id});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text( name, style: TextStyle(fontSize: 18,color: Colors.white70,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),
            Text(enrollment,style: TextStyle(fontSize: 14,color: Colors.white70)),
            Text(id,style: TextStyle(fontSize: 14,color: Colors.white70)),

          ],
        ),
      ),
    );
  }
}
