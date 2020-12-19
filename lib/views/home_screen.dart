import 'package:flutter/material.dart';
import 'package:flutter_mvvm/injection/locator.dart';
import 'package:flutter_mvvm/viewModels/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeviewMoel _viewModel = locator.get<HomeviewMoel>();

  @override
  void initState() {
    super.initState();

    _viewModel.fetchData();
    _viewModel.getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider(
      create: (context) => _viewModel,
      child: Consumer<HomeviewMoel>(
          builder: (context, model, child) {
             return _buildList(context, model);
           /* return ListView(
              children: model.list.map(
                      (e) => Text(e.name)).toList(),
            );*/

          }),
    )


        );
  }
}

Widget _buildList(BuildContext context, HomeviewMoel model) {
  return Container(
    height: 200,
    child: ListView.builder(
        itemCount:model.list.length,
        itemBuilder: (context, index) {
           var text = (model.list).map((e) => e.name).toList();


          return Card(
            elevation: 4,
            child: Text(text.toString()),
          );
        }),
  );
}
