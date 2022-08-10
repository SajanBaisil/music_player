import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_player/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              
              children: [
                  const SizedBox(
                  height: 10,
                ),
                // back button and menu button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NewBox(
                            child: Icon(
                          Icons.arrow_back,
                        )),
                      ),
                      Text('P  L  A  Y  L  I  S  T'),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NewBox(child: Icon(Icons.menu)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                // cover art, artist name, song name

                NewBox(
                    child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://github.com/mitchkoko/musicplayerUI/blob/master/lib/images/cover_art.png?raw=true',
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sid Sriram',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              'Music',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        )
                      ],
                    )
                  ],
                )),
                const SizedBox(
                  height: 25,
                ),

                //start time, shuffle button, repeat button, ent time

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4:20')
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                // linear Bar

                NewBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Color.fromARGB(255, 44, 60, 73),
                    backgroundColor: Colors.transparent,
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //previous song , pause play, skip next song

                SizedBox(
                  height: 60,
                  child: Row(
                    children:const [
                      Expanded(child: NewBox(child: Icon(Icons.skip_previous,size: 32,))),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: NewBox(child: Icon(Icons.play_arrow,size: 32,)),
                        )),
                      Expanded(child: NewBox(child: Icon(Icons.skip_next,size: 32,))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
