import 'package:flutter/material.dart';

class Content {
  final String detail, image, title;
  final int id;
  final Color color;
  Content({
    required this.id,
    required this.image,
    required this.title,
    required this.detail,
    required this.color,
  });
}

List<Content> contents = [
  Content(
      id: 1,
      title: "Web Design 1",
      detail: "10 Menit - 10 Mb",
      image: "assets/images/image1.jpg",
      color: Color(0xFF3D82AE)),
  Content(
      id: 2,
      title: "Web Design 2",
      detail: "10 Menit - 10 Mb",
      image: "assets/images/image2.jpg",
      color: Color(0xFFD3A984)),
  Content(
      id: 3,
      title: "Web Design 3",
      detail: "10 Menit - 10 Mb",
      image: "assets/images/image3.jpg",
      color: Color(0xFF989493)),
  Content(
      id: 4,
      title: "Web Design 4",
      detail: "10 Menit - 10 Mb",
      image: "assets/images/image4.jpg",
      color: Color(0xFFE6B398)),
  Content(
      id: 5,
      title: "Web Design 5",
      detail: "10 Menit - 10 Mb",
      image: "assets/images/image5.jpg",
      color: Color(0xFFFB7883)),
  Content(
    id: 6,
    title: "Web Design 6",
    detail: "10 Menit - 10 Mb",
    image: "assets/images/image6.jpg",
    color: Color(0xFFAEAEAE),
  ),
];
