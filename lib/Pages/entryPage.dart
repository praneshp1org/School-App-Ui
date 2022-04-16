import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
              "https://imgs.search.brave.com/GrfnQ-zJDTkpWaR1VxdB1DRW2ogONDwvgyJcExQzCwU/rs:fit:1200:664:1/g:ce/aHR0cHM6Ly9oZWxw/eC5hZG9iZS5jb20v/Y29udGVudC9kYW0v/aGVscC9lbi9waG90/b3Nob3AvdXNpbmcv/Y29udmVydC1jb2xv/ci1pbWFnZS1ibGFj/ay13aGl0ZS9qY3Jf/Y29udGVudC9tYWlu/LXBhcnMvYmVmb3Jl/X2FuZF9hZnRlci9p/bWFnZS1iZWZvcmUv/TGFuZHNjYXBlLUNv/bG9yLmpwZw"),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            title: Text("Nepal scenery"),
            trailing: Text("View all"),
          ),
        ],
      ),
    );
  }
}
