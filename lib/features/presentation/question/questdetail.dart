import 'package:flutter/material.dart';
import 'package:quiz_app/features/domain/model/question_model.dart';

class QuestDetail extends StatefulWidget {
  final List<QuestDataModel> questDataMode;
  late final int index;
     // ignore: prefer_const_constructors_in_immutables
     QuestDetail({super.key, required this.index, required this.questDataMode}
   
   );
  
  @override
  State<QuestDetail> createState() => _QuestDetailState();
}

class _QuestDetailState extends State<QuestDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.questDataMode[widget.index].question),
          Column(
            children: [
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: (){
                  
                  },
                  child: Text(widget.questDataMode[widget.index].choiceA),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                  
                  },
                  child: Text(widget.questDataMode[widget.index].choiceB),
                  ),
                ],
              ),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: (){
                  
                  },
                  child: Text(widget.questDataMode[widget.index].choiceC),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                  
                  },
                  child: Text(widget.questDataMode[widget.index].choiceD),
                  ),
                ],
              ),
            ],
          ),
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                heroTag: "f1",
                onPressed: (){
                  setState(() {
                    if(widget.index!=0){
                      widget.index --;
                    }
                  });
                },
                child:const Icon(Icons.arrow_back_ios) ,
              ),
              FloatingActionButton(
                heroTag: "f2",
                onPressed: (){
                  setState(() {
                    if(widget.index != widget.questDataMode.length-1){
                      widget.index ++;
                    }
                  });
                },
                child:const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
