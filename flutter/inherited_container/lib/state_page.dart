import 'package:flutter/material.dart';

class StatePageContainer extends StatefulWidget {
  final Widget child;
  StatePageContainer({@required this.child});
  static StatePageState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_StatePageInherited)
            as _StatePageInherited)
        .state;
  }

  @override
  StatePageState createState() => new StatePageState();
}

class StatePageState extends State<StatePageContainer> {
  String recordedData;
  @override
  Widget build(BuildContext context) {
    return new _StatePageInherited(
      state: this,
      child: widget.child,
    );
  }
}

class _StatePageInherited extends InheritedWidget {
  final StatePageState state;
  _StatePageInherited({
    Key key,
    @required this.state,
    @required Widget child,
  }) : super(key: key, child: child);
  @override
  bool updateShouldNotify(_StatePageInherited old) => true;
}
