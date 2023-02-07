import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

final List<Map> detail = [
  {
    "name": "Odin",
    "country": "Relic Recovery",
    "mobile": "2017-2018",
    "poza": "images/odin.png",
    "path": "obiecte/Odin.glb"
  },
  {
    "name": "Thor",
    "country": "Rover Ruckus",
    "mobile": "2018-2019",
    "poza": "images/thor.png",
    "path": "obiecte/Thor.glb"
  },
  {
    "name": "Loki",
    "country": "SkyStone",
    "mobile": "2019-2020",
    "poza": "images/loki.png",
    "path": "obiecte/Loki.glb"
  },
  {
    "name": "Balder",
    "country": "Ultimate Goal",
    "mobile": "Sezon 2020-2021",
    "poza": "images/balder.png",
    "path": "obiecte/Balder.glb"
  },
  {
    "name": "IV-an",
    "country": "Freight Frenzy",
    "mobile": "2021-2022",
    "poza": "images/ivan.png",
    "path": "obiecte/IV-an.glb"
  },
  {
    "name": "Cronos 2.0",
    "country": "Power Play",
    "mobile": "2022-2023",
    "poza": "images/Zeus.png",
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
