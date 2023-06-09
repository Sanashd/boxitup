// import 'package:flutter/material.dart';

class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    image: "assets/images/Take Away-pana (1).png",
    title: "Live Package Updates",
    description:
        "Follow your package's journey from pickup to delivery, ensuring peace of mind and timely updates throughout the process.",
  ),
  UnboardingContent(
    image: "assets/images/Time management-pana.png",
    title: "Flexible Delivery Scheduling",
    description:
        "Schedule your deliveries conveniently at your preferred times.",
  ),
  UnboardingContent(
    image: "assets/images/Push notifications-pana.png",
    title: "Get Notified about Your Deliveries",
    description:
        "Stay informed with notifications for every update on your package's whereabouts.",
  ),
];








//  image: "assets/images/Take Away-pana (1).png",
//                 title: "Track Your Package \n Every Step of the Way",
//                 description:
//                     "Follow your package's journey from pickup to delivery, ensuring peace of mind and timely updates throughout the process",
//               ),