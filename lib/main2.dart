import 'package:flutter/material.dart'; 

void main () { 
  runApp(
  MaterialApp(
    home: NinjaCard(),
    debugShowCheckedModeBanner: false,
     ),
);
}

class NinjaCard extends StatefulWidget {

  

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
   int ninjaLevel = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id Card',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        centerTitle: true,
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState((){
              ninjaLevel = ninjaLevel + 1;
            });
          },
          backgroundColor: Colors.grey[700],
          child: Icon(
            Icons.add,
          ),
          
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage( 'assets/james.jpg'),
                  radius: 40.0
                ),
              ),
              Divider(
                height: 90.0, 
                color: Colors.grey[800],
              ),
              Text(
                'NAME', 
                style: TextStyle(
                  color: Colors.grey ,
                  letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Chun-Li', 
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
               Text(
                'CURRENT NINJA LEVEL', 
                style: TextStyle(
                  color: Colors.grey ,
                  letterSpacing: 2.0
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$ninjaLevel', 
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget> [
                  Icon(
                    Icons.email, 
                    color: Colors.grey[400]
                  ),
                  SizedBox(width: 10.0), 
                  Text(
                    'chun.li@thenetninja.co.uk', 
                    style: TextStyle(
                      color: Colors.grey[400], 
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      
    );
  }
}

