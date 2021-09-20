import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ApiScreen(),
  ));
}

class ApiScreen extends StatefulWidget {
  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  @override
  List pokemon = [];

  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    Dio dio = new Dio();

    var fetchedData = await dio.get("https://pokeapi.co/api/v2/pokemon/");

    setState(() {});

    pokemon = fetchedData.data["results"];
    print(pokemon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Demo'),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: pokemon.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(pokemon[index]['url']),
        ),
      )),
    );
  }
}
