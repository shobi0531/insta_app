import 'package:flutter/material.dart';

void main()
{
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
    title: 'Instagram',
        theme: ThemeData(
       primarySwatch: Colors.red,

    ),
        home: const InstagramPost(),
    );
  }

}

class InstagramPost extends StatelessWidget {
  const InstagramPost({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context){
    return Scaffold(backgroundColor: Colors.black,
  appBar: AppBar(
    title: Text('Instagram ',style: TextStyle(fontWeight: FontWeight.bold),),
  ),
    body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg'),
              ),
              SizedBox(width:16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Messi',style: TextStyle(fontWeight: FontWeight.bold
                  ,color: Colors.white),
                  ),
                  Text('Football',style: TextStyle(color: Colors.white),)
                ],
              ),
              Expanded(child: Container(),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp, ),color: Colors.white,)

            ],
          ),
          ),
          Container(height: 300,
            decoration: BoxDecoration(
                image:DecorationImage(
                    fit: BoxFit.cover
                ,image:NetworkImage('https://idsb.tmgrup.com.tr/ly/uploads/images/2022/12/19/247181.jpg'),
                ),
            ),
          ),
          Padding(padding:const EdgeInsets.all(13.0),
            child:Row(
              children:[
              IconButton(onPressed: () {},icon: Icon(Icons.favorite_border),color:Colors.white,),
              SizedBox(width:16),
              IconButton(onPressed:() {},icon: Icon(Icons.comment_outlined),color:Colors.white,),
              Expanded(child:Container(),),
                IconButton(onPressed:() {},icon: Icon(Icons.bookmark_border_rounded),color:Colors.white,),
    ]
            )
          )
        ],

    ),
    ));
  }
}
