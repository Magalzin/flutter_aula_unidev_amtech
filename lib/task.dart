import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nomeDaTarefa;
  final String url;
  const Task({super.key, required this.nomeDaTarefa, this.url = ''});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int numeroStatus = 1;
  String status = '';
  @override
  Widget build(BuildContext context) {
    if (numeroStatus == 1) {
      status = 'A FAZER';
    }
    if (numeroStatus == 2) {
      status = 'FAZENDO';
    }
    if (numeroStatus == 3) {
      status = "CONCLUIDO";
    }
    void incrementStatus() {
      setState(() {
        numeroStatus++;
        if (numeroStatus > 3) {
          numeroStatus = 1;
        }
      });
    }

    return InkWell(
      onTap: incrementStatus,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Stack(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(widget.url),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      textAlign: TextAlign.center,
                      widget.nomeDaTarefa,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(status, style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
