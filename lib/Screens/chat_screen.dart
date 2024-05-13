import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Widgets/chat_box.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(
            image: AssetImage('assets/image/blackbackarrow.png'),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(
            child: Text(
              'Harry Brook',
              style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ChatBox(
                message: 'Hello! How are you?',
                height: 70,
                width: 200,
                topleft: 10,
                topright: 10,
                bottomleft: 10,
                bottomright: 10,
                time: '13:30',
                widget: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ChatBox(
                      time: '13:32',
                      message: "Hey Harry! I'm good, thanks. How about you?",
                      height: 70,
                      width: 310,
                      topleft: 10,
                      topright: 10,
                      bottomleft: 10,
                      bottomright: 0),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ChatBox(
                time: '13:34',
                message:
                    "I'm great, thanks for asking! Have you heard about the upcoming music party?",
                height: 94,
                width: 307,
                topleft: 10,
                topright: 10,
                bottomleft: 10,
                bottomright: 10,
                widget: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ChatBox(
                    time: '13:36',
                    message:
                        "Oh, yes! I heard about it. Sounds exciting! Are you planning to go?",
                    height: 70,
                    width: 310,
                    topleft: 10,
                    topright: 10,
                    bottomleft: 10,
                    bottomright: 0,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ChatBox(
                time: '13:38',
                message:
                    "Absolutely! I wouldn't miss it for anything. The lineup looks fantastic. Are you coming too?",
                height: 94,
                width: 307,
                topleft: 10,
                topright: 10,
                bottomleft: 10,
                bottomright: 10,
                widget: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ChatBox(
                    time: '13:40',
                    message:
                        "Yeah, I'm definitely going. It's been a while since we went to a party together.",
                    height: 92,
                    width: 310,
                    topleft: 10,
                    topright: 10,
                    bottomleft: 10,
                    bottomright: 0,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ChatBox(
                time: '13:44',
                message:
                    "That's true! It's going to be so much fun. Do you know what time it starts?",
                height: 94,
                width: 307,
                topleft: 10,
                topright: 10,
                bottomleft: 10,
                bottomright: 10,
                widget: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ChatBox(
                    time: '13:46',
                    message:
                        "I think it starts at 7:00 PM. We should probably get there a bit early to avoid the long lines.",
                    height: 92,
                    width: 310,
                    topleft: 10,
                    topright: 10,
                    bottomleft: 10,
                    bottomright: 0,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ChatBox(
                time: '13:47',
                message:
                    "Good idea! I heard they have some amazing food stalls too. I can't wait to try the food.",
                height: 94,
                width: 307,
                topleft: 10,
                topright: 10,
                bottomleft: 10,
                bottomright: 10,
                widget: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ChatBox(
                    time: '13:51',
                    message:
                        "Haha, you and your love for food! But yeah, I'm looking forward to it as well. Who else is going from our group?",
                    height: 114,
                    width: 310,
                    topleft: 10,
                    topright: 10,
                    bottomleft: 10,
                    bottomright: 0,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ChatBox(
                time: '13:53',
                message:
                    "I think Gibbs and Thanh Pham are going too. It's going to be a mini-reunion!",
                height: 94,
                width: 307,
                topleft: 10,
                topright: 10,
                bottomleft: 10,
                bottomright: 10,
                widget: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ChatBox(
                    time: '13:57',
                    message:
                        "That's awesome! It's going to be a blast catching up with everyone. Let's make this party unforgettable!",
                    height: 94,
                    width: 310,
                    topleft: 10,
                    topright: 10,
                    bottomleft: 10,
                    bottomright: 0,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ChatBox(
                time: '14:00',
                message:
                    "Absolutely, John! It's going to be a night to remember. See you there!",
                height: 84,
                width: 307,
                topleft: 10,
                topright: 10,
                bottomleft: 10,
                bottomright: 10,
                widget: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ChatBox(
                    time: '14:02',
                    message: "Can't wait, Harry! See you at the party! 🎉🎵🕺",
                    height: 74,
                    width: 310,
                    topleft: 10,
                    topright: 10,
                    bottomleft: 10,
                    bottomright: 0,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.2)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.fiber_manual_record,color: Color(0xff5252C7),size: 12,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Icon(Icons.fiber_manual_record,color: Color(0xff5252C7),size: 12,),
                          ),
                          Icon(Icons.fiber_manual_record,color: Color(0xff5252C7),size: 12,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/image/harrybrook.jpg'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: TextField(
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.none,
          obscureText: false,
          autofocus: false,
          style: GoogleFonts.poppins(fontSize: 14),
          keyboardType: TextInputType.text,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIconColor: Colors.grey,
            suffixIcon: Image(image: AssetImage('assets/image/addphoto.png')),
            label: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Type Something'),
              ),
            ),
            labelStyle:
            GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
      ),
    );
  }
}
