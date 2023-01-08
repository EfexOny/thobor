import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

final List<Map> detail = [
  {
    "name": "Balder",
    "country": "Ultimate Goal",
    "mobile": "Sezon 2020-2021",
    "text": "example",
    "poza": "images/balder.png",
    "path": "obiecte/Balder.glb"
  },
  {
    "name": "Loki",
    "country": "SkyStone",
    "mobile": "2019-2020",
    "text": "example",
    "poza": "images/loki.png",
    "path": "obiecte/Loki.glb"
  },
  {
    "name": "Thor",
    "country": "Rover Ruckus",
    "mobile": "2018-2019",
    "text": "example",
    "poza": "images/thor.png",
    "path": "obiecte/Thor.glb"
  },
  {
    "name": "Odin",
    "country": "Relic Recovery",
    "mobile": "2017-2018",
    "text": "example",
    "poza": "images/odin.png",
    "path": "obiecte/Odin.glb"
  },
  {
    "name": "IV-an",
    "country": "Freight Frenzy",
    "mobile": "2021-2022",
    "text": "example",
    "poza": "images/ivan.png",
    "path": "obiecte/IV-an.glb"
  },
  {
    "name": "Zeus",
    "country": "Power Play",
    "mobile": "2022-2023",
    "text": "example",
    "poza": "images/zeus.png",
    "path": "obiecte/Zeus.glb"
  },
];

Widget detalii(BuildContext context, int index) {
  return Scaffold(
    body: ModelViewer(
      src: detail[index]["path"],
      alt: detail[index]["name"],
      arScale: ArScale.auto,
      ar: true,
      arModes: ['scene-viewer', 'webxr', 'quick-look'],
      cameraControls: true,
    ),
  );
}
