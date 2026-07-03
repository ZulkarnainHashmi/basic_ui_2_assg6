import 'package:flutter/material.dart';
import '../models/item_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGridView = false; // Toggle karne ke liye Logic(),
  final List<Item> items = List.generate(20, (index) => Item(
      title: "Task Item ${index + 1}",
      subtitle: "Description for item number ${index + 1}",
      imageUrl: "",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Advanced"),
        actions: [
          // point 3: Button click to toggle layout
          IconButton(
            icon: Icon(isGridView ? Icons.list :Icons.grid_view),
            onPressed: () => setState(() => isGridView = !isGridView),
          ),
        ],
      ),
      body: isGridView ? buildGridView() : buildListView(),
    );
  }

  // point 2: Scrollable List
  Widget buildListView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemCard(
          title: items[index].title,
          subtitle: items[index].subtitle,
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("${items[index].title} clicked!")),
          ),
        );
      },
    );
  }

 //point 2: Grid Layout
  Widget buildGridView(){
   return GridView.builder(
      padding:EdgeInsets.all(10),   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 1.2,
      ), 
      itemCount: items.length,
      itemBuilder: (context,index){
       return ItemCard(
         title: items[index].title,
         subtitle: "Grid View",
         onTap: () {},
        );
      },
    );
  }
}
