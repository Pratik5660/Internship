import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> datestrings = [
      "2020-06-30 16:10:05",
      "2020-07-11 15:39:59",
      "2020-08-19 11:10:18",
      "2020-08-19 11:11:35",
      "2020-08-15 13:00:05",
      "2020-07-31 18:10:11",
      "2020-08-22 08:10:38",
      "2020-07-11 12:00:00",
      "2020-08-01 12:10:05",
      "2020-08-23 11:59:05",
    ];
    datestrings.sort((a, b) {
      //sort based on time
      return DateTime.parse(a).compareTo(DateTime.parse(b));
    });
    return Scaffold(
        appBar: AppBar(
          title: Text("Sorting Dates in Flutter"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            children: datestrings.map((dateone) {
              return Container(
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Text(dateone, style: TextStyle(fontSize: 18))),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
String timeAgo(DateTime d) {
 Duration diff = DateTime.now().difference(d);
 if (diff.inDays > 365)
  return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
 if (diff.inDays > 30)
  return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
 if (diff.inDays > 7)
  return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
 if (diff.inDays > 0)
  return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
 if (diff.inHours > 0)
  return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
 if (diff.inMinutes > 0)
  return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
 return "just now";
}
class attendance extends StatefulWidget {

  static Future<void> show(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (context)=>attendance(),fullscreenDialog: true),
    );
  }
  @override
  _attendanceState createState() => _attendanceState();
}


