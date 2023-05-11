import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MessagePages extends StatefulWidget {
  const MessagePages({Key? key}) : super(key: key);

  @override
  _MessagePagesState createState() => _MessagePagesState();
}

class _MessagePagesState extends State<MessagePages> {
  final String baseUrl = "https://api.telegram.org";
  final String botName = "LabInfo";
  final int userId = 5435001300;
  final String botApiToken = "6058191446:AAGOOO3-5RMdVZUIfgIw1gD4TQTHV7oS0wg";
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<String> messages = [];
  bool isRefreshing = false;

  Future<void> _sendMessage(String message) async {
    String url = '$baseUrl/bot$botApiToken/sendMessage';
    try {
      Response response = await Dio().post(url, data: {
        'chat_id': userId,
        'text': message,
      });
      if (response.statusCode == 200) {
        setState(() {
          messages.add(message);
          _messageController.clear();
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to send message')),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to send message')),
      );
    }
  }

  Future<void> _fetchMessages() async {
    String url = '$baseUrl/bot$botApiToken/getUpdates';
    try {
      Response response = await Dio().get(url);
      if (response.statusCode == 200) {
        List<dynamic> updates = response.data['result'];
        List<String> newMessages = [];
        for (dynamic update in updates) {
          String message = update['message']['text'];
          newMessages.add(message);
        }
        setState(() {
          messages = newMessages;
          isRefreshing = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to fetch messages')),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to fetch messages')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // receive messages at the bottom
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(messages[index]),
                  );
                },
              ),
            ),
          ),
          const Divider(height: 1),
          Container(
            decoration: BoxDecoration(),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type a message',
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    String message = _messageController.text.trim();
                    if (message.isNotEmpty) {
                      _sendMessage(message);
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    setState(() {
                      isRefreshing = true;
                    });
                    _fetchMessages();
                  },
                ),
                if (isRefreshing) const CircularProgressIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
