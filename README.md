# mvc_pattren
 pattren => MVC 

 Best practice to secure flutter app:

# 1 - secure api key: We have to way {
===============================================================================
     -way number one: Passing the key using --dart-define =>
        run the app like with you api key:
        flutter run --dart-define TMDB_KEY=a1b2c33d4e5f6g7h8i9jakblc

        Then, inside our Dart code, we can do:
        const tmdbApiKey = String.fromEnvironment('TMDB_KEY');
         if (tmdbApiKey.isEmpty) {
            throw AssertionError('TMDB_KEY is not set');
           }
          // TODO: use api key

        Note : with many key use json file => 
           flutter run --dart-define-from-file=your-file.json

        Then, we can add all the keys inside api-keys.json (which should be .gitignored):
        {
          "TMDB_KEY": "a1b2c33d4e5f6g7h8i9jakblc",
          "STRIPE_PUBLISHABLE_KEY": "pk_test_aposdjpa309u2n230ibt23908g",
          "SENTRY_KEY": "https://aoifhboisd934y2fhfe@a093qhq4.ingest.sentry.io/2130923"
        }

=======================================================================================
   Loading the key from a .env file =>
      -.env
      
      -add a .env file in root app than add it to .gitignore

      -exclude all .env files from source control
       *.env

     - pub.dev  => ENVied
     - We can create an env.dart file that looks like this:
        import 'package:envied/envied.dart';
          part 'env.g.dart';
          @Envied(path: '.env')
          abstract class Env {
           @EnviedField(varName: 'TMDB_KEY',obfuscate: true)
            static final tmdbApiKey = _Env.tmdbApiKey;
          }  

    -Then, we can run this command: 
     dart run build_runner build --delete-conflicting-outputs
    - env.g.dart, we should add it to .gitignore:
      env.g.dart

===================================================================================
      Note : its better to use way number one if we need to store api key on native side

      Note about Obfuscation
       No matter which option you choose, it's a good idea to obfuscate your entire code when you build a release version of your app, and the official documentation explains how to do this:

       Obfuscating Dart code     
# }


# 2- handel your permmison {
  permission_handler
# } 
 
 
# 3_ scuer local Storage {
  flutter_secure_storage
# }

# 4_ {
   Background snapshot protection => secure_application
# }



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
