import 'package:flutter/material.dart';
//import 'package:flutter_html/flutter_html.dart';
import 'package:ade_anyartech/models/event_api.dart';


//--------------------EventPromoPage--------------------//
class EventPromoPage extends StatefulWidget {
  const EventPromoPage({super.key});
  @override
  State<EventPromoPage> createState() => _EventPromoPage();
}

class _EventPromoPage extends State<EventPromoPage> {
  List<EventPromo> events = [];
  bool isLoading = true;

  void fetchEvent() async {
    isLoading = true;
    final result = await EventService.fetchEvent();
    events = result;
    setState(() {});
    isLoading = false;
  }

  @override
  void initState() {
    super.initState();
    fetchEvent();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 97, 0, 114),
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor : const Color.fromARGB(255, 109, 12, 126),
            leading: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            title: const Text('Event & Promo', style: TextStyle(color : Colors.white, fontFamily: 'Poppins'),
          ),
          titleSpacing: 0.0,
          centerTitle: true,
          toolbarHeight: 100.0,
          toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35)),
            ),
          ),
        ),
        
        body: Column(
          children: <Widget>[
            const Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                  title: Text('Dapatkan Event & Promo menarik disini',
                  style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255), fontSize: 18, fontFamily: 'Poppins', height: 2
                  ),
                  ),
                  subtitle: Text('Lihat Event dan Promo pada banner disini!',
                    style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255), fontSize: 8, fontFamily: 'Poppins', height: 1, letterSpacing: 0.5,
                    ),
                  ),
                  ),
                ]
              ),
            ),

            const Expanded(
              flex: 0,
                child: TabBar(
                labelColor: Colors.white,
                labelStyle: TextStyle(fontFamily: 'Poppins'),
                unselectedLabelColor: Colors.white,
                unselectedLabelStyle: TextStyle(fontFamily: 'Poppins'),
                dividerColor: Colors.transparent,
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(text: 'Event'),
                  Tab(text: 'Promo'),
                ],
              ),
            ),
           
            Expanded(
              flex: 10,
              child: Container(
                margin: const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0, bottom: 00.0,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];

                    return Card(
                    margin: const EdgeInsets.all(10),
                    color: const Color.fromARGB(255, 109, 12, 126),
                    elevation: 4,
                    child: InkWell(

                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EventPage()),
                    ),
                    
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            bottomLeft: Radius.circular(12.0),
                            ),
                          child: Image.network('https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/437970787_394511716820880_8692604583660409437_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=DOMdHcNuJGgQ7kNvgE86l_F&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfBamxkOfL3MiEnl20MBAyHz2JJnd23FrjeW2K156iJ0WA&oe=663A3453', 
                          height: 150, fit: BoxFit.cover)
                        ),
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(0.0), 
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 0.0, left: 20.0, right: 0.0, bottom: 0.0,), 
                                    width: 58.0, height: 22.0, alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8.0)
                                      ),
                                        gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, 
                                          colors: [Color.fromARGB(255, 255, 240, 103), Color.fromARGB(255, 179, 162, 11), 
                                          ], 
                                        ),
                                        ),
                                        child: Text(event.category,
                                          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white, 
                                          ),
                                      ),
                                  ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                child: Container(
                                    margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 0.0, bottom: 10.0,),  
                                    color: Colors.transparent,
                                      child: Text(event.title,
                                      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 18,
                                      ),
                                    ),
                                  ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                child: Container(
                                    margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 0.0, bottom: 0.0,),  
                                    color: Colors.transparent,
                                      child: Text(event.updatedat,
                                      style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 10,
                                      ),
                                    ),
                                  ),
                              ),
                            ],
                          ),
                           
                      ],
                    ),
                    ),
                  );
                  },
                  
                ),
              )
            ),
          ]
        )
      ),
      ),
    );
  }
}



//--------------------EventPage--------------------//
class EventPage extends StatefulWidget {
  const EventPage ({super.key});
  @override
  State<EventPage> createState() => _EventPage();
}

class _EventPage extends State<EventPage> {
  List<EventPromo> events = [];
  bool isLoading = true;

  void fetchEvent() async {
    isLoading = true;
    final result = await EventService.fetchEvent();
    events = result;
    setState(() {});
    isLoading = false;
  }

  @override
  void initState() {
    super.initState();
    fetchEvent();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 97, 0, 114),
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor : const Color.fromARGB(255, 109, 12, 126),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  onPressed: () { 
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EventPromoPage()),
                    );
                  },
                  );
              },
            ),
            title: const Text('Event', style: TextStyle(color : Colors.white, fontFamily: 'Poppins'),
          ),
          titleSpacing: 0.0,
          centerTitle: true,
          toolbarHeight: 100.0,
          toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35)),
            ),
          ),
        ),

      body: isLoading ? const Center(child: CircularProgressIndicator(),
            )
          : ListView.builder(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20,
                  ),
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                
                
               return Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 109, 12, 126),
                 child: Column(
                  children: <Widget>[
                    Image.network('https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/428612168_360786956860023_6131831888904756308_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G8l_380ZHIkQ7kNvgEoCpOn&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfDSBSxdpE1rbxet-CV_WxOlP5vqqmW_T-hc3X0H-TcIhA&oe=663BB362'),
                    ListTile(
                      title: Text(event.title, 
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16,
                        ),
                      ),
                      subtitle: const Text('Deskripsi',
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 14,
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(event.content,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 10,
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(event.updatedat,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 9,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          )
        ),
      ),
        );
      }
    }


    //--------------------PromoPage--------------------//
class PromoPage extends StatefulWidget {
  const PromoPage ({super.key});
  @override
  State<PromoPage> createState() => _PromoPage();
}

class _PromoPage extends State<PromoPage> {
  List<EventPromo> events = [];
  bool isLoading = true;

  void fetchEvent() async {
    isLoading = true;
    final result = await EventService.fetchEvent();
    events = result;
    setState(() {});
    isLoading = false;
  }

  @override
  void initState() {
    super.initState();
    fetchEvent();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 97, 0, 114),
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor : const Color.fromARGB(255, 109, 12, 126),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  onPressed: () { 
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EventPromoPage()),
                    );
                  },
                  );
              },
            ),
            title: const Text('Promo', style: TextStyle(color : Colors.white, fontFamily: 'Poppins'),
          ),
          titleSpacing: 0.0,
          centerTitle: true,
          toolbarHeight: 100.0,
          toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35)),
            ),
          ),
        ),

      body: isLoading ? const Center(child: CircularProgressIndicator(),
            )
          : ListView.builder(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20,
                  ),
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                
                
               return Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 109, 12, 126),
                 child: Column(
                  children: <Widget>[
                    Image.network('https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/428612168_360786956860023_6131831888904756308_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G8l_380ZHIkQ7kNvgEoCpOn&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfDSBSxdpE1rbxet-CV_WxOlP5vqqmW_T-hc3X0H-TcIhA&oe=663BB362'),
                    ListTile(
                      title: Text(event.title, 
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16,
                        ),
                      ),
                      subtitle: const Text('Deskripsi',
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 14,
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(event.content,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 10,
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(event.updatedat,
                        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 9,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          )
        ),
      ),
        );
      }
    }