import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import '../widgets/chat.dart';
//import '../widgets/messages.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 18.0,
              ),
              Container(
                height: 78.0,
                width: 60.0,
                color: Colors.amberAccent,
                //padding: EdgeInsets.only(left: 18.0),
                child: SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/message_icon.jpg'),
                    //radius: 40.0,
                  ),
                ),
              ),

              /// Previous image
              /*child: Image.asset(
                  'assets/message_icon.jpg',
                  height: 62.0,
                  width: 40.0,
                  filterQuality: FilterQuality.high,
                ),*/

              /*SizedBox(
                  height: 72.0,
                  width: 30.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/messageIconBrown.jpg'),
                    radius: 28,
                  ),
                ),*/

              SizedBox(
                width: 10.0,
              ),
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
          myIcon: const Icon(Icons.dashboard_outlined),
          //myIcon: const FaIcon(FontAwesomeIcons.gauge),
          title: 'Dashboard',
          onTap: () {},
        ),
        _SideMenuIconTab(
          //iconData: Icons.analytics_outlined,
          myIcon: const Icon(Icons.analytics_outlined),
          title: 'Analytics',
          onTap: () {},
        ),
        _SideMenuIconTab(
          //iconData: Icons.folder_copy_outlined,
          myIcon: const FaIcon(FontAwesomeIcons.file),
          title: 'Files',
          onTap: () {},
        ),
        _SideMenuIconTab(
          myIcon: Icon(Icons.call_outlined),
          //myIcon: const FaIcon(FontAwesomeIcons.phone),
          title: 'Call',
          onTap: () {},
        ),
        const SizedBox(height: 9.0),
        _SideMenuIconTab(
          //iconData: Icons.message_outlined,
          myIcon: const FaIcon(FontAwesomeIcons.message),
          title: 'Messages',
          onTap: () {},
        ),
        _SideMenuIconTab(
          myIcon: Icon(Icons.people_alt_outlined),
          //myIcon: const FaIcon(FontAwesomeIcons.peopleGroup),
          title: 'Community',
          onTap: () {},
        ),
        _SideMenuIconTab(
          //iconData: Icons.settings,
          myIcon: const Icon(Icons.settings_applications),
          title: 'Settings',
          onTap: () {},
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 24,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        'assets/user.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('User',
                            style: Theme.of(context).textTheme.bodyLarge),
                        const SizedBox(height: 4.0),
                        ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey.withOpacity(0.2),
                            elevation: 1,
                          ),
                          child: Text(
                            'Logout',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _SideMenuIconTab extends StatelessWidget {
  //final IconData iconData;
  final String title;
  final VoidCallback onTap;
  final Widget myIcon;

  const _SideMenuIconTab(
      {Key? key,
      //required this.iconData,
      required this.onTap,
      required this.title,
      required this.myIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      /*leading: Icon(
        iconData,
        //color: Theme.of(context).iconTheme.color,
        color: Colors.lightBlueAccent.withOpacity(0.6),
        size: 26.0,
      ),*/
      leading: IconButton(
        onPressed: onTap,
        iconSize: 25,
        color: Colors.black87,
        //color: const Color(0xff1d4ab3),
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        icon: myIcon,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Theme.of(context).iconTheme.color,
        size: 10.0,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
      //splashColor: Colors.transparent,
    );
  }
}
