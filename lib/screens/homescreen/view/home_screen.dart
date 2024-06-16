
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../../../utils/video_list.dart';
import '../../videoscreen/view/video_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return VideoScreen(
                  video: videoList[index]['video'],
                  username: videoList[index]['username'],
                  comments: videoList[index]['comments'],
                  likes: videoList[index]['likes'],


                );
              },
              itemCount: videoList.length,
              scrollDirection: Axis.vertical,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150 ),
                  child: Row(
                    children: [
                     Text('Follwing' , style: TextStyle(fontSize: 25),),
                      SizedBox(width: 20,),
                      Text('For You' , style: TextStyle(fontSize: 25),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.add_box,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.inbox,
            color: Colors.white,
            size: 28,
          ),
          Icon(
            Icons.person_2_outlined,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
    );
  }
}
