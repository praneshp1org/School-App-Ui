import 'package:flutter/material.dart';
import 'package:school_app/models/product_model.dart';

class Esewa extends StatefulWidget {
  const Esewa({Key? key}) : super(key: key);

  @override
  State<Esewa> createState() => _EsewaState();
}

class _EsewaState extends State<Esewa> {
  List<products> items = [
    products("PC", "450", true,
        "https://imgs.search.brave.com/-eWW3d6u1vKgtJG-bhT1TVStKGfCTGDUowy95wYkUHY/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9sb25n/d29vZGdhcmRlbnMu/b3JnL3NpdGVzL2Rl/ZmF1bHQvZmlsZXMv/aGlnaGxpZ2h0X2lt/YWdlcy83Njc1OC5q/cGc"),
    products("Pa452", "570", true,
        "https://imgs.search.brave.com/5FByKhGK6xWtbLgUOxTPbTYSKIt1v52QNeMPeJz72Lw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9sb25n/d29vZGdhcmRlbnMu/b3JnL3NpdGVzL2Rl/ZmF1bHQvZmlsZXMv/aGlnaGxpZ2h0X2lt/YWdlcy8xMzAzNjZf/MC5qcGc"),
    products("Pa452", "578", true,
        "https://imgs.search.brave.com/5FByKhGK6xWtbLgUOxTPbTYSKIt1v52QNeMPeJz72Lw/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9sb25n/d29vZGdhcmRlbnMu/b3JnL3NpdGVzL2Rl/ZmF1bHQvZmlsZXMv/aGlnaGxpZ2h0X2lt/YWdlcy8xMzAzNjZf/MC5qcGc"),
    products("Pranesh", "50000", true,
        "https://avatars.githubusercontent.com/u/80845871?v=4")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ESEWA"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(items[index].image),
                      ),
                      title: Text(items[index].productName),
                      subtitle: Text(items[index].price),
                      trailing: items[index].sale
                          ? Text("Available")
                          : Text("Not available"),
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
