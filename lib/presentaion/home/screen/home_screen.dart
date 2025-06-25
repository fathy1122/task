import 'package:flutter/material.dart';
import 'package:task/data/api/api_manager.dart';
import 'package:task/presentaion/home/widgets/card_widget.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:FutureBuilder(future: ApiManager.getItems(), builder: (_, snapshot) {
          if(snapshot.hasError){
          return Center(child: Text(snapshot.error.toString()));

          }else if(snapshot.hasData){
            var data = snapshot.data;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    childAspectRatio: 85/150,
                    mainAxisSpacing: 5),
                itemCount:data?.length,
                itemBuilder: (context, index) {
                  return CardWidget(title: data?[index].title??'',price: data?[index].price.toString()??'',image: data?[index].image??'',rating: data?[index].rating?.rate.toString()??'',desc: data?[index].description??'',);

                },),
            );
          }else{
            return const Center(child: CircularProgressIndicator());
          }
        },)
      ),
    );
  }
}
