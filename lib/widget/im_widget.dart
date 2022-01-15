
import 'package:browse_ui/models/im_models.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImWidget extends StatelessWidget{
  ImModel imModel;
  ImWidget(this.imModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imModel.imageUrl),
          ),SizedBox(height: 10,),
          Text(imModel.title.tr(),style: TextStyle(fontSize: 15,color: Colors.white),)
        ],
      ),
    );

  }

}