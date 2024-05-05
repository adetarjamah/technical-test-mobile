import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}


/*Card cardEvent(IconData iconData, String text) {
  return Card(
          elevation: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                    ),
                child: Image.network('https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/437970787_394511716820880_8692604583660409437_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=DOMdHcNuJGgQ7kNvgE86l_F&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfBamxkOfL3MiEnl20MBAyHz2JJnd23FrjeW2K156iJ0WA&oe=663A3453', 
                height: 150, fit: BoxFit.cover)
              ),
                const SizedBox(
                width: 200,
                height: 100,
                child: Center(
                  child: Text('Centered within constraints'),
                ),
              )
            ],
          ),
        );*/


  /*Card cardEventAPI(IconData iconData, String text) {
    return Card(
        clipBehavior: Clip.antiAlias,
          child: Column(
          children: [
            ListTile(
              leading: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 66, minHeight: 66, maxWidth: 99, maxHeight: 99,
                ),
                child: Image.network('https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/437970787_394511716820880_8692604583660409437_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=DOMdHcNuJGgQ7kNvgE86l_F&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfBamxkOfL3MiEnl20MBAyHz2JJnd23FrjeW2K156iJ0WA&oe=663A3453', fit: BoxFit.cover),
              ),
              title: Text(text),
              subtitle: Text(text,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            /*Image.network('https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/437970787_394511716820880_8692604583660409437_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=DOMdHcNuJGgQ7kNvgE86l_F&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfBamxkOfL3MiEnl20MBAyHz2JJnd23FrjeW2K156iJ0WA&oe=663A3453'),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      );*/


                    /* return Card(
                  child: ListTile(
                    leading: Image.network(('https://storage.googleapis.com/ekrutassets/home/deploy/ekrut/releases/20220617052453/public/ckeditor_assets/pictures/10258/original_H3-8._Poster_Promosi_Makanan.jpg') ,
                      fit: BoxFit.fill,
                      width: 100,
                      height: 100,
                    ),
                    title: Text((event.category),
                      maxLines: 2, 
                      overflow: TextOverflow.ellipsis, 
                    ),
                    subtitle: Text((event.title),
                      maxLines: 2, 
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              }
          )
    );
  }
}*/
  
          /*ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(event.featuredimage),
                    ),
                    title: Text(event.category),
                    subtitle: Text(event.title),
                    isThreeLine: true,
                  ),
                );
              },
            ),
    );
  }
  
}*/

/* Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 92.0, vertical: 0.0),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EventPage())),
                  child: const Text('Event'),   
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 92.0, vertical: 0.0),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PromoPage())),
                  child: const Text('Promo'),  
                ),
                ]
              ),
            ),*/