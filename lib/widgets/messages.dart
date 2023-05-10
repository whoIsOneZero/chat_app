import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.0)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 88.0,
                  decoration: BoxDecoration(
                      //color: Colors.amberAccent,
                      border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          'Messages',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: Colors.blueAccent[700],
                                  fontSize: 22.0),
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 4.0, right: 6.0, top: 4.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.blueGrey[50],
                              child: const Icon(Icons.edit_outlined),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 4.0, right: 1.0, top: 4.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.blueGrey[50],
                              child: const Icon(Icons.search_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
