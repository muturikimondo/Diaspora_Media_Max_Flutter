import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Facebook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text("YouTube"),
        ),
        body: WebView(
          initialUrl: "https://www.facebook.com/diasporamediamax",
          javascriptMode: JavascriptMode.unrestricted,

        )
    );
  }

}