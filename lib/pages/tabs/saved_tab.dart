import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/constants.dart';
import 'package:news_app/utils/theme/widget_themes/text_theme.dart';

const List<Widget> subscribeStatus = <Widget>[Text('News'), Text('Events')];

class SavedTab extends StatefulWidget {
  const SavedTab({Key? key}) : super(key: key);

  @override
  State<SavedTab> createState() => _SavedTabState();
}

class _SavedTabState extends State<SavedTab> {
  final List<bool> _selectedSubscription = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.green,
        title: const Text('Saved'),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
              children: [
                ToggleButtons(
                  onPressed: (int index) {
                    setState(() {

                      // The button that is tapped is set to true, and the others to false.
                      for (int i = 0; i < _selectedSubscription.length; i++) {
                        _selectedSubscription[i] = i == index;
                      }
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  selectedBorderColor: Colors.red[700],
                  selectedColor: Colors.white,
                  fillColor: Colors.red[200],
                  color: Colors.red[400],
                  constraints: const BoxConstraints(
                    minHeight: 40.0,
                    minWidth: 80.0,
                  ),
                  isSelected: _selectedSubscription,
                  children: subscribeStatus,
                ),
                const Spacer(),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,// Center the content horizontally
                  children: [
                    Image.asset(
                      'assets/images/save.png',
                      width: Constants.alertIconSize,
                      height: Constants.alertIconSize,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'sadfasdadasdasd',
                      style: TTextTheme.lightTextTheme(context).titleSmall,
                    ),
                  ],
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SubscribeToggleButtons(),
//     );
//   }
// }


