import 'dart:io';

import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:flutter/material.dart';

class PDFListViewer extends StatefulWidget {
  final PDFDocument document;
  List<PDFPage> _pages;

  PDFListViewer({
    Key key,
    @required this.document,
  }) : super(key: key);

  @override
  _PDFListViewerState createState() => _PDFListViewerState();
}

class _PDFListViewerState extends State<PDFListViewer> {
  int _loaded = 0;

  @override
  void initState() {
    widget._pages = List(widget.document.count);
    widget.document.preloadPages().then((value) {
      for (var i = 0; i < widget.document.count; i++) {
        widget.document.get(page: i + 1).then((value) {
          widget._pages[i] = value;
          _loaded++;
          if (_loaded == widget.document.count) setState(() {});
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _loaded == widget.document.count
        ? ListView.builder(
            itemCount: widget.document.count,
            itemBuilder: (context, index) {
              return Image.file(File(widget._pages[index].imgPath));
            },
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
