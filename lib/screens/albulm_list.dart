import 'package:flutter/material.dart';

class AlbulmWidget extends StatelessWidget {
  const AlbulmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(8),
      margin:const EdgeInsets.only(left: 10,top: 10),
      decoration: const BoxDecoration(
        color: Colors.white, 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 90,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:const DecorationImage(image: AssetImage('asset/images/img_3.jpg',),fit: BoxFit.cover,
              ) ,

            ),
          ),
          const SizedBox(width:20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
                child: Row(children: [
                  Icon(Icons.star,size: 20,color: Colors.yellow,),
              SizedBox(width: 6,),
                  Text('4.5',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),)

                ],),
              ),
              const SizedBox(height: 3,),
              const Text('Atomic Habit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              const SizedBox(height: 5,),
              const Text('James Clear',style: TextStyle(fontSize: 12,color: Colors.grey),),
              const SizedBox(height: 5,),
              Container(
                height: 25,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),

                ),
                 child: const Center(child:  Text('Love',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
              ),
            ],
          )
        ],
      ),
    );
  }
}