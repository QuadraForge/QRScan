import 'package:flutter/material.dart';
import 'link_storage.dart';

class SavedLinksScreen extends StatelessWidget{
  const SavedLinksScreen({super.key});

  @override
  Widget build(BuildContext context){
    final links = LinkStorage.getLinks();

    return Scaffold(
      appBar: AppBar(title: const Text('Kayıtlı Kodlar')),
      body: ListView.builder(
        itemCount: links.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(links[index]),
          );
        },
      ),
    );
  }
}