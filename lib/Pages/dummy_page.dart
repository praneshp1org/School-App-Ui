import 'package:flutter/material.dart';
import 'package:school_app/models/dummy_model.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  List<ShoppingCart> carts = [
    ShoppingCart(
        "Laptop",
        "A core I5 laptop.",
        "https://imgs.search.brave.com/3Tpdst1vfLEjQr0BAdi6RrH9G8fKNDokWN0idYzKwgo/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/YmhwaG90b3ZpZGVv/LmNvbS9pbWFnZXMv/aW1hZ2VzMjUwMHgy/NTAwL2xnXzEzejk5/MF9hX2FhczV1MV9n/cmFtX2k1XzgyNjV1/XzhnYl8yNTZzc2Rf/MTQ1OTgzMC5qcGc",
        true),
    ShoppingCart(
        "Mouse",
        " A high tech gaming mouse",
        "https://imgs.search.brave.com/TGPUo6LNQUvZUv5I-VzuB8baaU7SoNXNm2431j2y_m0/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pMS53/cC5jb20vdG9wcG9y/dGFscmV2aWV3LmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAx/OC8wMy9BTUlSLUdh/bWluZy1Nb3VzZS1V/U0ItV2lyZWQtT3B0/aWNhbC1HYW1pbmct/TWljZS13aXRoLTky/MDAtRFBJLUhpZ2gt/UHJlY2lzaW9uLTYt/QWRqdXN0YWJsZS1E/UEktMTAwMC05MjAw/LTgtQWRqdXN0YWJs/ZS1XZWlnaHRzLTYt/Q2hhbmdpbmctTEVE/LTgtQnV0dG9ucy5q/cGc_Zml0PTEyMDAl/MkMxMjAwJnNzbD0x",
        false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your cart items"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: carts.length,
                itemBuilder: ((context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(carts[index].image),
                      ),
                      title: Text(carts[index].name),
                      subtitle: Text(carts[index].desc),
                      trailing: carts[index].isAvailable
                          ? Text("Available")
                          : Text("Not-available"),
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
