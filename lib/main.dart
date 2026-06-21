import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // यह कोडिंग ऊपर के स्टेटस बार (चार्जिंग, बैटरी, टाइम) को वाइट और आइकन्स को दिखने लायक डार्क बनाती है
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white, // टूलबार वाइट हो गया
    statusBarIconBrightness: Brightness.dark, // टाइम और चार्जिंग बार डार्क/साफ दिखेगा
    systemNavigationBarColor: Colors.white, // नीचे की नेविगेशन पट्टी भी वाइट
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  
  runApp(const MyHeavyApp());
}

class MyHeavyApp extends StatelessWidget {
  const MyHeavyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // वॉटरमार्क हटाने के लिए
      title: 'Professional Heavy App',
      theme: ThemeData(
        useMaterial3: true, // मॉडर्न मटीरियल 3 डिज़ाइन थीम
        primaryColor: Colors.white,
      ),
      home: const MainToolsScreen(),
    );
  }
}

class MainToolsScreen extends StatelessWidget {
  const MainToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white, // पूरी स्क्रीन का बैकग्राउंड वाइट
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bolt, size: 80, color: Colors.blueGrey),
              SizedBox(height: 20),
              Text(
                'मेरा भारी-भरकम डार्ट ऐप',
                style: TextStyle(
                  fontSize: 26, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'बिना सर्वर के, एकदम स्मूथ और फुल स्क्रीन लुक',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
