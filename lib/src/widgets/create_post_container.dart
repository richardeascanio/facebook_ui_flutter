import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/src/models/models.dart';
import 'package:flutter_facebook_responsive_ui/src/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  
  final User currentUser;

  const CreatePostContainer({
    @required this.currentUser
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ProfileAvatar(imageUrl: currentUser.imageUrl,),
              const SizedBox(width: 8.0,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on you mind?'
                  ),
                ),
              )
            ],
          ),
          const Divider(height: 8.0, thickness: 0.5,),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () => print('live'), 
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ), 
                  label: Text('Live')
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('Photo'), 
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ), 
                  label: Text('Photo')
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('Room'), 
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ), 
                  label: Text('Room')
                )
              ],
            ),
          )
        ],
      )
    );
  }
}