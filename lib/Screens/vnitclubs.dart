import 'package:flutter/material.dart';

class VnitClubs extends StatelessWidget {
  final List<String> clublogos = [
    'images/clubslogos/ecell.jpg',
    'images/clubslogos/hallabol.jpg',
    'images/clubslogos/ids.jpg',
    'images/clubslogos/ieee.jpg',
    'images/clubslogos/ivlabs.jpg',
    'images/clubslogos/mag.jpg',
    'images/clubslogos/octaves.jpg',
    'images/clubs/groves.jpg',
    'images/clubs/cyclistsofvnit.jpg',
        'images/clubs/clubcapture.jpg',
        'images/clubs/quiz.jpg',
        'images/clubs/savvad.jpg',
        'images/clubs/shell.jpg',
        'images/clubs/studentChapter.jpg',
        'images/clubs/teamvelocitry.jpg',
    'images/clubs/tesla.jpg'



  ];
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(

          title: Text('VNIT CLUBS '),

          centerTitle: true,
          backgroundColor: Color.fromRGBO(10, 1, 11, 1),
        ),

        body: Container(
          decoration: BoxDecoration(
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
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            itemCount: 16,
            itemBuilder: (context, index) {
              return ClubCard(clublogos: clublogos[index],);
            },
          ),
        ),
      );

  }
}
class ClubCard extends StatefulWidget {
  final String clublogos ;
  ClubCard({required this.clublogos});
   @override
  _ClubCardState createState() => _ClubCardState();
}

class _ClubCardState extends State<ClubCard> {
  bool _isFollowing = false;

  void _toggleFollow() {
    setState(() {
      _isFollowing = !_isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(

        elevation: 5,
        child: Container(
          height: 250,
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                // Replace with your image
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.clublogos),

                  )
                )
              ),
              Expanded(

                child: Container(
                  height: 10,
                  color: Colors.deepPurple.withOpacity(0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle info button tap
                        },
                        icon: Icon(Icons.info_outline,size: 30,),
                      ),
                      Row(
                        children: [
                          Icon(Icons.people,size: 30),
                          SizedBox(width: 4),
                          Text('1000'), // Replace with follower count
                        ],
                      ),
                      ElevatedButton(
                        onPressed: _toggleFollow,
                        style: ElevatedButton.styleFrom(
                          primary: _isFollowing ? Colors.grey :Color.fromRGBO(28, 7, 81, 1),
                        ),
                        child: Text(_isFollowing ? 'Added Stars' : 'Add Stars to your account'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

