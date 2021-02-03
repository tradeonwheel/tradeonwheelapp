import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:trade_on_wheel/screens/home.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}
class _WebViewExampleState extends State<WebViewExample> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buzz'),
        backgroundColor: Color(0xFF172f55),
        automaticallyImplyLeading: false,
      ),
      // We're using a Builder here so we have a context that is below the Scaffold
      // to allow calling Scaffold.of(context) so we can show a snackbar.
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://tradeonwheel.com/blog/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          // ignore: prefer_collection_literals
          javascriptChannels: <JavascriptChannel>[
            _toasterJavascriptChannel(context),
          ].toSet(),
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (controller) async{
            (await _controller.future).evaluateJavascript("document.getElementsByClassName('header-magazine')[0].style.display='none';document.getElementsByClassName('footer_widgets_wrapper')[0].style.display='none';"); //THIS ONE WORKS
          },
          gestureNavigationEnabled: true,
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationControls(_controller.future),backgroundColor: Color(0xFF172f55),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

}
class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: !webViewReady
                    ? null
                    : () async {
                  if (await controller.canGoBack()) {
                    await controller.goBack();
                  } else {
                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(
                      const SnackBar(content: Text("No back history item")),
                    );
                    return;
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );},),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: !webViewReady
                    ? null
                    : () async {
                  if (await controller.canGoForward()) {
                    await controller.goForward();
                  } else {
                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("No forward history item")),
                    );
                    return;
                  }
                },
              ),
              // IconButton(
              //   icon: const Icon(Icons.replay),
              //   color: Colors.white,
              //   onPressed: !webViewReady
              //       ? null
              //       : () {
              //     controller.reload();
              //   },
              // ),
            ],
          ),
        );
      },
    );
  }
}