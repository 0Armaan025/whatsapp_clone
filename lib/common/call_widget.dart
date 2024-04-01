import 'package:flutter/material.dart';

class CallWidget extends StatefulWidget {
  const CallWidget({Key? key});

  @override
  State<CallWidget> createState() => _CallWidgetState();
}

class _CallWidgetState extends State<CallWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: size.height * 0.08,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/3231/3231417.png"),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Arnav",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_outward_outlined,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "21 minutes ago",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50, // Adjust the width as needed
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call_outlined,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
