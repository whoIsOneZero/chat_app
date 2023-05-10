import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.blue,
          border: Border.all(color: Colors.grey.shade300, width: 1.0)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Text(
                      'Messages',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.blue, fontSize: 20.0),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.edit_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.search_outlined),
                        ),
                      ],
                    ),
                    /*trailing: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.edit_outlined),
                    ),*/
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
