import 'package:flutter/material.dart';

import 'widgets.dart';

class AuthFunc extends StatelessWidget {
  const AuthFunc({
    super.key,
    required this.loggedIn,
    required this.signOut,
  });

  final bool loggedIn;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 8),
          child: StyledButton(
              onPressed: () {
                !loggedIn
                    ? Navigator.of(context).pushNamed('/sign-in')
                    : signOut();
              },
              child: !loggedIn ? const Text('RSVP') : const Text('Logout')),
        ),
        Visibility(
            visible: loggedIn,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 8),
              child: StyledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/profile');
                  },
                  child: const Text('Profile')),
            ))
      ],
    );
  }
}
