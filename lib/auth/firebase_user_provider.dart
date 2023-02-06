import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ChaBapFirebaseUser {
  ChaBapFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ChaBapFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ChaBapFirebaseUser> chaBapFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ChaBapFirebaseUser>(
      (user) {
        currentUser = ChaBapFirebaseUser(user);
        return currentUser!;
      },
    );
