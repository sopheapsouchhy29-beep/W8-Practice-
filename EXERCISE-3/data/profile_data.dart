import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

const ProfileData ronanProfile = ProfileData(
  name: "Ronan OGOR",
  position: "Flutter Developer",
  avatarUrl: 'assets/w5-s2/aang.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "ronan.ogor@cadt.edu"),
    TileData(icon: Icons.school, title: "Institution", value: "CADT - IDT"),
    TileData(icon: Icons.code, title: "Skills", value: "Flutter, Dart, UI/UX"),
    TileData(icon: Icons.language, title: "Website", value: "cadt.edu.kh"),
    TileData(
      icon: Icons.work,
      title: "Experience",
      value: "Mobile App Instructor",
    ),
    TileData(
      icon: Icons.favorite,
      title: "Interests",
      value: "Clean Architecture & Teaching",
    ),
  ],
);
