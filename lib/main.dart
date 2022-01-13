import 'package:flutter/material.dart';
import 'package:flutter_book_reader_app/about_page.dart';
import 'package:flutter_book_reader_app/privacy_page.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Hope- Book Reader',
    home: HomePage(),
  ));
}

/// Represents Homepage for Navigation
class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Hope- Book Reader'),
        backgroundColor: Colors.teal,
      ),
        drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Homepage"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("About Us"),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
            ListTile(
              title: const Text("Privacy Policy"),
              leading: const Icon(Icons.policy),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PolicyPage()),
                );
              },
            ),
            ListTile(
              title: const Text("Exit"),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SfPdfViewer.network(
        'https://raw.githubusercontent.com/flutterhopeweb/pdffile/main/flutterhope.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
