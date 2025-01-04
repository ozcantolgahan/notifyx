import 'package:flutter/material.dart';
import 'package:notifyx/notifyx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAnimatedAlert(
              context: context,
              alertWidget: RichNotifyXWidget(
                type: AlertEnumTypes.errorSolid,
                title: 'Example Title',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
              ));
        },
        child: const Icon(Icons.send),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichNotifyXWidget(
                type: AlertEnumTypes.infoOutlined,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.errorSolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.primarySolid,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                hasCancelIcon: false,
              ),
              const SizedBox(
                height: 12,
              ),
              RichNotifyXWidget(
                type: AlertEnumTypes.errorOutlined,
                title: 'Lorem Ipsum',
                description:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                hasCancelIcon: false,
                linkButton: LinkButtonModel(onTap: () {}, title: 'Link Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
