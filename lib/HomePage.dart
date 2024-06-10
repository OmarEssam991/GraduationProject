import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalui/Adoption.dart';
import 'package:flutter/material.dart';
import 'package:finalui/Add_Pet.dart';
import 'package:finalui/flutterfont.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: TabBar(
          indicatorColor: Colors.greenAccent,
          labelColor: Colors.green,
          dividerColor: Colors.transparent,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              text: 'Cats',
              icon: Icon(FlutterfontIcons.Cat),
            ),
            Tab(
              icon: Icon(FlutterfontIcons.Dog),
              text: 'Dogs',
            ),
            Tab(
              icon: Icon(FlutterfontIcons.Bird),
              text: 'Birds',
            ),
            Tab(
              icon: Icon(Icons.more_horiz),
              text: 'Other',
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/icons/pets5.jpg"),
                  fit: BoxFit.cover)),
          child: const TabBarView(children: <Widget>[
            NestedTabBar('Cats'),
            NestedTabBar('Dogs'),
            NestedTabBar('Birds'),
            NestedTabBar('Other')
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          onPressed: () {
            Navigator.of(context).push(_createRoute("UivGUlW2tBjoCpuJUnpN"));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab,  {super.key});

  final String outerTab;
  
  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
       List<QueryDocumentSnapshot> data = [];

        getData() async {
          final String subcollection = _getSubcollection();
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(widget.outerTab)
        .doc("UivGUlW2tBjoCpuJUnpN")
        .collection(subcollection)
        .get();
    data.addAll(querySnapshot.docs);
   

    setState(() {
          data = querySnapshot.docs;
    });
  }
  String _getSubcollection() {
    
    final Map<int, String> tabToSubcollection = {
      0: 'Adoption',
      1: 'Mating',
      2: 'Rescue',
    };
    
    final int selectedIndex = _tabController.index;
    return tabToSubcollection[selectedIndex] ?? '';
  }

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);
    getData();
  }

  void _handleTabChange() {
    // When the tab changes, refetch the data
    getData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          indicatorColor: Colors.green,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
                child: Text(
              'Adoption',
              style: TextStyle(color: Colors.green),
            )),
            Tab(
                child: Text(
              'Mating',
              style: TextStyle(color: Colors.green),
            )),
            Tab(
                child: Text(
              'Rescue',
              style: TextStyle(color: Colors.green),
            )),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 160),
                itemBuilder: ( context,i) {  
                    return Card(
                  color: Colors.white70,
                 child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(data: data[i].data()as Map<String, dynamic>),
                    ),
                  );
                },
                   child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Image.network("${data[i]['url']}", height: 100,),
                      Text("${data[i]['name']}")
                   
                    ],),
                   ),
                 ),
                );
                }, 
               
              ),
              GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 160),
                itemBuilder: ( context,i) {  
                    return Card(
                  color: Colors.white70,
                 child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(data: data[i].data()as Map<String, dynamic>),
                    ),
                  );
                },
                   child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Image.network("${data[i]['url']}", height: 100,),
                      Text("${data[i]['name']}")
                   
                    ],),
                   ),
                 ),
                );
                }, 
               
              ),
              
          GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 160),
                itemBuilder: ( context,i) {  
                    return Card(
                  color: Colors.white70,
                 child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(data: data[i].data()as Map<String, dynamic>),
                    ),
                  );
                },
                   child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Image.network("${data[i]['url']}", height: 100,),
                      Text("${data[i]['name']}"),
                   
                    ],),
                   ),
                 ),
                );
                }, 
               
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Route _createRoute(String categoryid) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
         ImagePickerScreen(categoryid: categoryid),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
// Ad Details Screen , 1v1 ? XD 
class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Details'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          
          image: DecorationImage(
            
            image: AssetImage("assets/icons/pets5.jpg"),
            
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "${data['url']}",
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 20),
              ),
              _buildDetailRow(Icons.pets,'Name :', "${data['name']}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 10),
              ),
              _buildDetailRow(Icons.numbers,'Age :', "${data['age']}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 10),
              ),
              _buildDetailRow(Icons.sick,'Allergies/Meds :', "${data['allergies']}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 10),
              ),
              _buildDetailRow(Icons.more_horiz,'Other :', "${data['other']}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 10),
              ),
              _buildDetailRow(Icons.people,'Owner Name :', "${data['owner']}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 10),
              ),
              _buildDetailRow(Icons.phone,'Phone :', "${data['phone']}"),
              
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
          ElevatedButton.icon(
            
            style: ElevatedButton.styleFrom(
              
              foregroundColor: Colors.white, backgroundColor: Colors.green, // Text Color (Foreground color)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            ),
            icon:Icon(Icons.chat),
            label: Text('Chat'),
            onPressed: () {
              // Chat button action
            },
          ),
          SizedBox(width: 10), // Spacing between buttons
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green, // Text Color (Foreground color)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            ),
             icon: Icon(Icons.mail),
            label: Text('SMS'),
            onPressed: () {
              // SMS button action
            },
          ),
          SizedBox(width: 10), // Spacing between buttons
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green, // Text Color (Foreground color)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            ),
             icon: Icon(Icons.call),
            label: Text('Call'),
            onPressed: () {
              // Call button action
            },
          ),
        ],
              ),
      ),
    );
  }

 Widget _buildDetailRow(IconData icon,String label, String value,  ) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1), // Semi-transparent background
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
        color: Colors.green, // Outline color
        width: 2, // Outline width
      ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
          icon,
          color: Colors.green,
          size: 24,
        ),
          Container(
            width: 150,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          
          SizedBox(height: 1),
         Text(
              value,
              style: TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
            ),
          
        ],
      ),
    );
  }
}