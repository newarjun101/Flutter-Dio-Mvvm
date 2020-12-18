import 'package:flutter/material.dart';
import 'package:flutter_mvvm/injection/locator.dart';
import 'package:flutter_mvvm/services/ApiService.dart';
import 'package:flutter_mvvm/viewModels/home_view_model.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeviewMoel _viewModel = locator.get<HomeviewMoel>();


  @override
  void initState() {
    super.initState();

    _viewModel.fetchData();
    _viewModel.getPost();



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: (_viewModel.posts!=0)?
          ChangeNotifierProvider(create: (context) =>_viewModel,
            child: Consumer<HomeviewMoel>(

              builder: (context,model,child) =>_buildList(context, model)
            ),
          ):
         CircularProgressIndicator(
           backgroundColor: Colors.grey,

         )

    );
  }


}
 Widget _buildList(BuildContext context,HomeviewMoel model){

  return ListView.builder(
    itemCount: model.posts.length,
      itemBuilder: (context,index){

     // var text = (model.list[index].source).map((e) => model.list.length).toList();

        return Card(
          elevation: 4,
          child: Text(model.posts[index].title),
        );
      });
 }