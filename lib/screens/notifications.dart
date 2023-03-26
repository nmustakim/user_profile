import 'package:flutter/material.dart';
import 'package:user_profile/constants/constants.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Notifications',style: kAppbarTextStyle,),centerTitle: true,backgroundColor: kPrimaryColor),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 20,),
          Text('Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
    SizedBox(height: 15,),
     ListTile(leading:CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: Text('Nice man liked your post'),subtitle:Text('How to communicate effect...'),trailing:Icon(Icons.thumb_up,color: Colors.indigo,)
     ),
          SizedBox(height: 7,),
          ListTile(leading:CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: Text('ABC commented on your post'),subtitle:Text('How to communicate effect...'),trailing:Icon(Icons.comment,color: Colors.indigo,)
          ),
            SizedBox(height: 7,),

          ListTile(leading:CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: Text('XYZ shared your post'),subtitle:Text('Health awareness for an IT professional...'),trailing:Icon(Icons.share,color: Colors.indigo,)
          ),
            SizedBox(height: 20,),
          Text('Yesterday',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: 15,),
            ListTile(leading:CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: Text('Asdfg messaged you'),subtitle:Text('When will you arri...'),trailing:Icon(Icons.message,color: Colors.indigo,)
          ),
            SizedBox(height: 7,),
          ListTile(leading:CircleAvatar(radius:40,backgroundImage: AssetImage('assets/images/profile.png')),title: Text('Mr human liked your post'),subtitle:Text('Health awareness for an IT professional...'),trailing:Icon(Icons.thumb_up,color: Colors.indigo,)
          ),


        ],),
      ),
    );
  }
}
