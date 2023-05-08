// import 'package:flutter/material.dart';
// import 'package:medical_services/Screens/news/news.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class WebViewScreen extends StatefulWidget {
//
//   late String url ;
//   WebViewScreen(
//       this.url
//       )  ;
//
//   @override
//   State<WebViewScreen> createState() => _WebViewScreenState();
// }
//
// class _WebViewScreenState extends State<WebViewScreen> {
//    WebViewController controller =WebViewController();
//
//   @override
//   void initState() {
//     void urll(){
//       for(var i =0 ;i > 100  ; i ++){
//         setState(() {
//           controller = WebViewController()..loadRequest(Uri.parse(News_Medical.business[i]['url']));
//         });
//       }
//     }
//    super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: WebViewWidget(
//           controller: controller,
//
//
//       )
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {

  late String url ;
  WebViewScreen(
      this.url, {super.key}
      )  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
