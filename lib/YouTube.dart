import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class YouTube extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text("YouTube"),
      ),
          body: WebView(
              initialUrl: "https://www.youtube.com/channel/UCD8RKLNBcps8hC7qaU1XSFg",
              javascriptMode: JavascriptMode.unrestricted,

    )
    );
  }

}