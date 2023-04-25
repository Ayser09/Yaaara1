import 'package:auth/firebase_options.dart';
import 'package:auth/src/features/authentication/screens/chatbot/providers/chats_provider.dart';
import 'package:auth/src/features/authentication/screens/chatbot/providers/models_provider.dart';
import 'package:auth/src/repository/authentication_repository/authentication_repository.dart';
import 'package:auth/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(
        create: (_) => ModelsProvider(),
    ),
    ChangeNotifierProvider(
    create: (_) => ChatProvider(),
    ),
    ],
      child: GetMaterialApp(
          theme: TAppTheme.darkTheme,
          darkTheme: TAppTheme.lightTheme,
          themeMode: ThemeMode.dark,
          defaultTransition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 500),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )),
    );
  }
}
