import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({super.key});

  final chatInput = TextEditingController();

  void onSendClicked(){
    print('chat input value: ${chatInput.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              maxLines: 5,
              minLines: 1,
              keyboardType: TextInputType.multiline,
              controller: chatInput,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Enter your message',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              onSendClicked();
            },
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
