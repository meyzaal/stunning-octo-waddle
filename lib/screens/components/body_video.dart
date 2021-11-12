import 'package:flutter/material.dart';
import 'package:downloaded_page/constants.dart';
import 'package:downloaded_page/models/list_video.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
              itemCount: contents.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) => ItemCard(
                    content: contents[index],
                  )),
        )),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Content content;

  const ItemCard({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: kDefaultPaddin)),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: content.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${content.id}",
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Image.asset(
                    content.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              content.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Montserrat'),
            ),
          ),
          Text(
            "${content.detail}",
            style: TextStyle(
              // color: kTextLightColor,
              fontWeight: FontWeight.w100,
              fontFamily: "Montserrat",
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
