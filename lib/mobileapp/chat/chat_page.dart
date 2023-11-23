import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color(0xffA7ECFD),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Image.asset(
                'assets/Logo.png',
                height: 50,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Lorna Alvarado',
              style: TextStyle(fontSize: 14, fontFamily: 'Raleway'),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate([
                    const Center(child: Text('Today')),
                    const SizedBox(
                      height: 10,
                    ),
                    bubbleWidget(isMe: true),
                    bubbleWidget(isMe: false),
                    bubbleWidget(isMe: true),
                    bubbleWidget(isMe: false),
                    bubbleWidget(isMe: true),
                    bubbleWidget(isMe: false),
                    bubbleWidget(isMe: true),
                    bubbleWidget(isMe: false),
                    bubbleWidget(isMe: true),
                    bubbleWidget(isMe: false),
                    bubbleWidget(isMe: true),
                    bubbleWidget(isMe: false),
                  ]))
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Write message',
                  suffixIcon: InkWell(
                      onTap: () {}, child: const Icon(Icons.telegram_sharp))),
            )
          ],
        ),
      ),
    );
  }
}

bubbleWidget({bool? isMe}) {
  return isMe == true
      ? Container(
          decoration: BoxDecoration(
              color: const Color(0xff59ADC1),
              borderRadius: BorderRadius.circular(8)),
          margin: const EdgeInsets.only(right: 100, left: 20, top: 10),
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: [
              Text('''I'm glad to talk to you. I hope to see you soon.'''),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Text('10:45 AM'), Icon(Icons.done_all)],
                ),
              )
            ],
          ),
        )
      : Container(
          decoration: BoxDecoration(
              color: const Color(0xffFBB03B),
              borderRadius: BorderRadius.circular(8)),
          margin: const EdgeInsets.only(right: 20, left: 100, top: 10),
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: [
              Text('''I'm glad to talk to you. I hope to see you soon.'''),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Text('10:45 AM'), Icon(Icons.done)],
                ),
              )
            ],
          ),
        );
}
