// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

const String _markdownData = "Hola estoy en __negrita__. "
    "A ver si van los [links](http://ondho.com)";

void miFunc(String url) async {
  print("Opening URL $url");
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void main() {
  runApp(new MaterialApp(
      title: "Markdown Demo",
      home: new Scaffold(
          appBar: new AppBar(title: const Text('Markdown Demo')),
          body: const Markdown(data: _markdownData, onTapLink: miFunc))));
}
