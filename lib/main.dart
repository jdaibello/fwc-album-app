import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/config/env.dart';
import 'package:fwc_album_app/app/fwc_album_app.dart';

Future<void> main() async {
  await Env.instance.load();

  runApp(const FwcAlbumApp());
}
