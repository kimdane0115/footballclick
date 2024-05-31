

import 'dart:async';
import 'package:footballclick/feature/1.sign/presentation/provider/sign_async_notifier.dart';
import 'package:footballclick/feature/2.home/presentation/provider/home_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/constants/index.dart';
// import '../provider/supabase_auth_provider.async_notifier.dart';
import '../provider/supabase_auth_provider.async_notifier.dart';
import '../widget/show_loadingIndicator.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   return SafeArea(
  //     child: Container(
  //       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.end,
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           ElevatedButton(
  //             onPressed: () {
  //               _googleSignIn(context, ref);
  //             },
  //             child: const Text('GOGGLE 로그인'),
  //           ),
  //           const SizedBox(height: 8,),
  //           ElevatedButton(
  //             onPressed: () {
  //               _kakaoSignIn(context, ref);
  //             },
  //             child: const Text('카카오 로그인'),
  //           ),
  //           const SizedBox(height: 8,),
  //           ElevatedButton(
  //             onPressed: () {
  //               const SignUpScreenRoute().push(context);
  //             },
  //             child: const Text('회원가입'),
  //           ),
  //           // ElevatedButton(
  //           //   onPressed: () {
  //           //     // googlelogin();
  //           //     _googleSignIn(context, ref);
  //           //   },
  //           //   child: const Text('Login Button'),
  //           // ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late BuildContext loading;

  @override
  void initState() {
    return super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(),
      )
    );
  }

  Widget body() {
    final verificationState = ref.watch(signAsyncNotifierProvider);
    ref.listen(
      signAsyncNotifierProvider,
      (prev, next) {
        next.whenOrNull(
          data: (value) async {
            if (value == null) return;

            if (value.access_token!.isEmpty) {
              const SignUpAdminScreenRoute().go(context);
            } else {
              // if (test == token) {
              //   print('>>>>> true');
              // } else {
              //   print('>>>>> false');
              // }

              // // print('>>>> accessToken : ${googleAuth?.accessToken}');
              // print('>>>> idToken : ${googleAuth?.idToken}');
              // print('>>>>> value : ${value.id_token}');

              await Supabase.instance.client.auth.signInWithIdToken(
                provider: OAuthProvider.google,
                idToken: value.id_token ?? '',
                accessToken: value.access_token,
              );
            }

            if (mounted) {
              context.pop(loading);
            }

            print('>>>>>> value : $value');
          },
          error: (error, stackTrace) {
            if (context.mounted) {
              context.pop(loading);
            }
          },
        );
      },
    );

    return SafeArea(
      child: verificationState.maybeWhen(
        data: (data) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _googleSignIn(context, ref);
                  },
                  child: const Text('GOGGLE 로그인'),
                ),
                const SizedBox(height: 8,),
                ElevatedButton(
                  onPressed: () {
                    _kakaoSignIn(context, ref);
                  },
                  child: const Text('카카오 로그인'),
                ),
                const SizedBox(height: 8,),
                ElevatedButton(
                  onPressed: () {
                    const SignUpScreenRoute().push(context);
                  },
                  child: const Text('회원가입'),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     // googlelogin();
                //     _googleSignIn(context, ref);
                //   },
                //   child: const Text('Login Button'),
                // ),
              ],
            ),
          );
        },
        orElse:() {
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Future<void> _googleSignIn(BuildContext context, WidgetRef ref) async {
    // final loading = await showLoadingIndicator(context);
    print('>>>>>>>>>> start _googleSignin');
    loading = await showLoadingIndicator(context);

    if (await GoogleSignIn().isSignedIn()) {
      await GoogleSignIn().signOut();
    }

    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      clientId: '257746472366-nis9odkp8hnm80lkpmuvg2jefs7dgq2j.apps.googleusercontent.com',
      serverClientId: '257746472366-i63jfjv30f9avq3vp12723gmap541lgh.apps.googleusercontent.com',
    ).signIn();

    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    String email = googleUser?.email ?? '';
    String token = googleAuth?.idToken ?? '';

    print('>>> token : ${googleAuth?.idToken}');

// ref.read(snsVerificationAsyncNotifierProvider.notifier).snsVerify(request);
    await ref.read(signAsyncNotifierProvider.notifier).snsVerify(
        email, googleAuth?.idToken ?? '', googleAuth?.accessToken ?? '');

    // ref.watch(supaBaseAuthAsyncNotifierProvider.notifier).signInWithGoogle();


    // final GoogleSignInAccount? googleUser = await GoogleSignIn(
    //               clientId: '257746472366-nis9odkp8hnm80lkpmuvg2jefs7dgq2j.apps.googleusercontent.com',
    //               serverClientId: '257746472366-i63jfjv30f9avq3vp12723gmap541lgh.apps.googleusercontent.com',
    //             ).signIn();

    //             String email = googleUser?.email ?? '';

    //             // Obtain the auth details from the request
                
    
    // try {
    //   if (await GoogleSignIn().isSignedIn()) {
    //     await GoogleSignIn().signOut();
    //   }

    //   selectedSns = DingdonguAuthType.google;
    //   final googleToken = await SocialService().signInWithGoogle();
    //   if (mounted) {
    //     context.pop(loading);
    //   }

    //   logger.d('googleToken : $googleToken');
    //   if (googleToken == null) return; // 선택 안하고 취소했을 경우

    //   DingdonguDeviceType deviceType = getDeviceType();

    //   DingdonguApiVerifySnsRequest request = DingdonguApiVerifySnsRequest(
    //     snsType: DingdonguSnsType.google,
    //     deviceType: deviceType,
    //     idToken: googleToken,
    //   );

    //   ref.read(snsVerificationAsyncNotifierProvider.notifier).snsVerify(request);
    // } catch (e) {
    //   if (mounted) {
    //     context.pop(loading);
    //   }
    // }
  }

  Future<void> _kakaoSignIn(BuildContext context, WidgetRef ref) async {
      // var hash = await KakaoSdk.origin;
      // if (hash.isNotEmpty) {
      //   print('>>>> has key is exist');
      // } else {
      //   print('>>>> has key is not exist');
      // }

    await Supabase.instance.client.auth.signInWithOAuth(
      OAuthProvider.kakao,
      redirectTo: "fluttertemplate.co.kr://oauth",
      // redirectTo: "io.supabase.flutterquickstart://login-callback",
      // redirectTo: "flutter_template.co.kr://login-callback",
      // redirectTo: "com.example.flutter_template.dev://oauth",
      // redirectTo: 'myteam.co.kr://login-callback',
      // authScreenLaunchMode: LaunchMode.externalApplication,
      // authScreenLaunchMode: LaunchMode.platformDefault,
    );

      Supabase.instance.client.auth.onAuthStateChange.listen((data) { 
        print('>>> ${data.event}');
      });

        // await  Supabase.instance.client.auth.signInWithOAuth(OAuthProvider.kakao);

        //           // Listen to auth state changes in order to detect when ther OAuth login is complete.
        //            Supabase.instance.client.auth.onAuthStateChange.listen((data) {
        //             final AuthChangeEvent event = data.event;
        //             if (event == AuthChangeEvent.signedIn) {
        //               debugPrint('데이터 : $data');
        //               debugPrint('세션 : ${data.session}');
        //               final snackBarText = SnackBar(
        //                   content: Text(
        //                       '${data.session?.user.userMetadata!['email']}님 반갑습니다'));
        //               ScaffoldMessenger.of(context).showSnackBar(snackBarText);
        //             }
        //           });

  }
}