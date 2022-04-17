import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Image.network(
          "https://imgs.search.brave.com/2__5NHozXQ7y9JVhvB56b_kkOEkhrGSZa2eVAUDYCrI/rs:fit:1000:981:1/g:ce/aHR0cDovL2ltYWdl/czQuZmFucG9wLmNv/bS9pbWFnZS9waG90/b3MvMjM3MDAwMDAv/RnVubnktcmFuZG9t/LTIzNzk3OTE1LTEw/MDAtOTgxLmpwZw",
          width: 100,
        ),
        ListTile(
          title: Text("Home"),
          subtitle: Text("This is a homepage"),
        ),
      ]),
    );
  }
}
