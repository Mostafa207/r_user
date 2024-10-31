import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/api_provider.dart';
import '../widgets/api_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<HomePageProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("random user"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) =>
            Consumer(builder: (context, HomePageProvider provider, child) {
          if (provider.users == null) {
            provider.setData();
            return const CircularProgressIndicator();
          }
          return card(provider.users!.data[index]['name'], provider.users!.data[index]['location'],
              provider.users!.data[index]['pic']);
        }),
        itemCount: 10,
      ),
    );
  }
}
