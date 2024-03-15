import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: TabBar(

              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chat'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,)=>[
                  PopupMenuItem(
                      value: '1',
                      child: Text('New Group')),
                    PopupMenuItem(
                        value: '2',
                        child: Text('Settings')),
                    PopupMenuItem(
                        value: '3',
                        child: Text('Logout'))
,                  ]),
              SizedBox(width: 10),
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/6274712/pexels-photo-6274712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Atif Lodhi'),
                      subtitle: Text('hello! where are you'),
                      trailing: Text('12:34 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 2
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/6274712/pexels-photo-6274712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: Text('Atif Lodhi'),
                      subtitle: Text('hello! where are you'),
                      trailing: Text('12:34 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/6274712/pexels-photo-6274712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Atif Lodhi'),
                      subtitle: Text(index %2 == 0 ? 'You missed audio call' : 'You missed video call' ,
                      style: TextStyle(
                        color: Colors.red,
                      ),) ,
                      trailing: Icon(index %2 == 0 ? Icons.phone_callback : Icons.video_call),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}
