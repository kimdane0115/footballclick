// import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'sign_async_notifier.dart';
part 'supabase_auth_provider.async_notifier.g.dart';

final authStreamProvider = StreamProvider<AuthState>((ref) {
  return Supabase.instance.client.auth.onAuthStateChange;
});

@Riverpod(keepAlive: true)
class SupaBaseAuthAsyncNotifier extends _$SupaBaseAuthAsyncNotifier {
  @override
  FutureOr<void> build() async {
    // return '';
  }

  FutureOr<void> signInWithGoogle() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        clientId: '257746472366-nis9odkp8hnm80lkpmuvg2jefs7dgq2j.apps.googleusercontent.com',
        serverClientId: '257746472366-i63jfjv30f9avq3vp12723gmap541lgh.apps.googleusercontent.com',
      ).signIn();
      // String iosClientId = '';
      // String webClientId = '';
      // final GoogleSignInAccount? googleUser = await GoogleSignIn(
      //   clientId: iosClientId,
      //   serverClientId: webClientId,
      // ).signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      print('>>>> displayName : ${googleUser?.displayName}');
      print('>>>> email : ${googleUser?.email}');
      print('>>>> accessToken : ${googleAuth?.accessToken}');
      print('>>>> idToken : ${googleAuth?.idToken}');

      String email = googleUser?.email ?? '';

      print('>>>>>> start email : $email');
      // ref.read(userVerifyProvider).call(email);
      //  OAuthCredential _googleCredential = GoogleAuthProvider.credential(
      //   idToken: googleAuth?.idToken,
      //   accessToken: googleAuth?.accessToken,
      // );

      // UserCredential _credential =
      //     await FirebaseAuth.instance.signInWithCredential(_googleCredential);
      // if (_credential.user != null) 
      //   print(">>>> ${_credential.user}");
      //   return _credential.user!.displayName ?? ""; 
      // } else {
      //   return '';
      // }

      /// supabase auth
      // final AuthResponse response = await Supabase.instance.client.auth.signInWithIdToken(
      await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: googleAuth?.idToken ?? '',
        accessToken: googleAuth?.accessToken,
      );
    });
  }

  FutureOr<void> signUpWithGoogle() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        clientId: '257746472366-nis9odkp8hnm80lkpmuvg2jefs7dgq2j.apps.googleusercontent.com',
        serverClientId: '257746472366-i63jfjv30f9avq3vp12723gmap541lgh.apps.googleusercontent.com',
      ).signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      String name = googleUser?.displayName ?? '';
      String email = googleUser?.email ?? '';
      String idToken = googleAuth?.idToken ?? '';
      String accessToken = googleAuth?.accessToken ?? '';
      // String fcmToken = googleUser?.fcm_token ?? '';

      print('>>>>>> start email : $email');
      // ref.read(userVerifyProvider).call(email);
      //  OAuthCredential _googleCredential = GoogleAuthProvider.credential(
      //   idToken: googleAuth?.idToken,
      //   accessToken: googleAuth?.accessToken,
      // );

      // UserCredential _credential =
      //     await FirebaseAuth.instance.signInWithCredential(_googleCredential);
      // if (_credential.user != null) 
      //   print(">>>> ${_credential.user}");
      //   return _credential.user!.displayName ?? ""; 
      // } else {
      //   return '';
      // }

      /// supabase auth
      // final AuthResponse response = await Supabase.instance.client.auth.signInWithIdToken(
      final res = await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: googleAuth?.idToken ?? '',
        accessToken: googleAuth?.accessToken,
      );

      final request = {
        'uuid': res.user?.id,
        'email': email,
        'name': name,
        'fcm_token': '123456',
        'profile_image_url': '1234567',
        'id_token': idToken,
        'access_token': accessToken,
        // 'created_at': DateTime.now().toIso8601String(),
      };
      
      ref.read(signAsyncNotifierProvider.notifier).addProfie(request);
    });
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // if (ref.read(meAsyncNotifierProvider).value!.data!.socialType == SocialType.google) {
      //   await GoogleSignIn().signOut();
      // }
      // FirebaseService().unsubscribe();
      await GoogleSignIn().signOut();
      await Supabase.instance.client.auth.signOut();
    });
  }
}