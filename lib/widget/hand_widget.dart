import 'package:browse_ui/Screens/hand_screen.dart';
import 'package:browse_ui/models/hand_model.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HandWidget extends StatelessWidget{
  HandModel handModel;
  HandWidget(this.handModel);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
          color: Colors.grey[100],
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.network(handModel.imageUrl, fit: BoxFit.cover,width: 100,height: 100,)),
                 SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(

                        children: [
                          InkWell(child: Text(handModel.mainAddress.tr(),style: TextStyle(fontSize: 20),),
    onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return HandScreen();
    }
    ),)
    ),
                        ],
                      ),
                      Container(

                        child: Row(
                          children: [
                            Text(handModel.subAddress.tr()),
                          ],
                        ),
                      ),

                    ],
                  )

                ],
              )


            ],
          ),
        ),
      ),
    );
  }

}