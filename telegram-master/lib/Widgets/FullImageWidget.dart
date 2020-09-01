import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullPhoto extends StatelessWidget {
  final String url;

  const FullPhoto({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Full Image',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: FullPhotoScreen(url: url),
    );
  }
}

class FullPhotoScreen extends StatefulWidget {
  final String url;

  const FullPhotoScreen({Key key, this.url}) : super(key: key);

  @override
  State createState() => FullPhotoScreenState();
}

class FullPhotoScreenState extends State<FullPhotoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        imageProvider: NetworkImage(widget.url),
      ),
    );
  }
}
