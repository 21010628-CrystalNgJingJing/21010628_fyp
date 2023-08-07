import 'package:flutter/material.dart';

import 'naviContainer.dart';
import 'navigationBar.dart';

class StageLifeView extends StatefulWidget {
  const StageLifeView({Key? key}) : super(key: key);

  @override
  _StageLifeViewState createState() => _StageLifeViewState();
}

class _StageLifeViewState extends State<StageLifeView> {
  String description =
      "By understanding the importance of financial stability, young adults can make informed decisions, manage their resources effectively, and lay the foundation for a secure and prosperous future.";
  String recommendedPlan =
      "Life insurance: Ensuring financial support for the surviving spouse and children.\nHealth insurance: Covering the medical needs of the entire family. \nHomeowners or renters insurance: Protecting against property damage or loss.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ""),
      endDrawer: NaviContainer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 580,
                ),
                Positioned(
                  top: 80,
                  child: Container(
                    width: 350,
                    height: 470,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20), // Set the border radius to create circular corners
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 0.5, // Border width
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Center elements along the X-axis
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "Young adults stepping out into society",
                          style: TextStyle(
                            color: Color(0xFFDC0606),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 6,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Text(
                            "Recommended Plans",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          recommendedPlan,
                          style: TextStyle(fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 7,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection:
                    Axis.horizontal, // Set the scroll direction to horizontal
                itemCount:
                    10, // Replace with the number of items you want to display
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://picsum.photos/200',
                            height: 70,
                          ),
                          Text('Plan x'),
                          Container(
                            width: 200,
                            child: Text(
                              'Health Insurance',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
