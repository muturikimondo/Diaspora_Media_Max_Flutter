import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Twitter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text("YouTube"),
        ),
        body: WebView(
          initialUrl: "https://twitter.com/DiasporaMax",
          javascriptMode: JavascriptMode.unrestricted,

        )
    );
  }

}