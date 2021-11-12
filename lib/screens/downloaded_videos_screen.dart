import 'package:flutter/material.dart';
import 'package:downloaded_page/constants.dart';
import 'package:downloaded_page/screens/components/body_video.dart';
import 'package:downloaded_page/screens/downloaded_documents_screen.dart';
import 'package:downloaded_page/screens/components/appbar.dart';

class DownloadedVideoScreen extends StatelessWidget {
  DownloadedVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
    );
  }
}

class BuildAppBar extends StatefulWidget implements PreferredSizeWidget {
  BuildAppBar({Key? key})
      : preferredSize = Size.fromHeight(150.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _BuildAppBarState createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  String dropdownValue = 'Video';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      flexibleSpace: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Downloaded Videos',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '6 Video - 3 Jam',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              margin: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                // value: dropdownValue,
                hint: Text("Document"),
                icon: Icon(
                  Icons.arrow_drop_down_circle_rounded,
                ),
                iconSize: 24,
                underline: SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'Document',
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DownloadedDocumentScreen()),
                          );
                        },
                        child: Text('Document')),
                  ),
                  DropdownMenuItem(
                    value: 'Video',
                    child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => DownloadedVideoScreen()),
                          // );
                        },
                        child: Text('Video')),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
