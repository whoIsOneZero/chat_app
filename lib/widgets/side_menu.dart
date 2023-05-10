import 'package:flutter/material.dart';
import '../widgets/chat.dart';
import '../widgets/messages.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.amberAccent,
          border: Border.all(color: Colors.grey.shade300, width: 1.0)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
            )),
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/chat_logo.png',
                      height: 55.0,
                      width: 30.0,
                      filterQuality: FilterQuality.high,
                    )),
                Row(children: [
                  Text('ChitChat',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 20.0))
                ]),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          _SideMenuIconTab(
            iconData: Icons.dashboard_outlined,
            title: 'Dashboard',
            onTap: () {},
          ),
          _SideMenuIconTab(
            iconData: Icons.analytics_outlined,
            title: 'Analytics',
            onTap: () {},
          ),
          _SideMenuIconTab(
            iconData: Icons.folder_copy_outlined,
            title: 'Files',
            onTap: () {},
          ),
          _SideMenuIconTab(
            iconData: Icons.call_outlined,
            title: 'Call',
            onTap: () {},
          ),
          const SizedBox(height: 9.0),
          _SideMenuIconTab(
            iconData: Icons.message_outlined,
            title: 'Messages',
            onTap: () {},
          ),
          _SideMenuIconTab(
            iconData: Icons.people_alt_outlined,
            title: 'Community',
            onTap: () {},
          ),
          _SideMenuIconTab(
            iconData: Icons.settings,
            title: 'Settings',
            onTap: () {},
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.blue,
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 20,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                              'assets/user.png',
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          height: 40.0,
                          //color: Colors.deepOrange,
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: [
                              Text(
                                'User',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                'Logout',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _SideMenuIconTab extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _SideMenuIconTab(
      {Key? key,
      required this.iconData,
      required this.onTap,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 28.0,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
