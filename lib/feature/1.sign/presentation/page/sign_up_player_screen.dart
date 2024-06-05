import 'package:footballclick/feature/1.sign/presentation/provider/supabase_auth_provider.async_notifier.dart';
import '../../../../core/constants/index.dart';

class SignUpPlayerScreen extends ConsumerStatefulWidget {
  const SignUpPlayerScreen({super.key});

  @override
  ConsumerState<SignUpPlayerScreen> createState() => _SignUpPlayerScreenState();
}

class _SignUpPlayerScreenState extends ConsumerState<SignUpPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              const FindTeamScreenRoute().push(context);
            },
            child: const Text('팀 찾기'),
          ),
          const SizedBox(height: 20,),
          const Text('이름'),
          TextFormField(
      
          ),
          const Text('나이'),
          TextFormField(
      
          ),
          const Text('포지션'),
          TextFormField(
      
          ),
          const Text('신체조건'),
          TextFormField(
      
          ),
          const SizedBox(height: 50,),
          ElevatedButton(
            onPressed: () async {
              // String email = ref.read(signUpScreenNotifierProvider).email;
              // String idToken = ref.read(signUpScreenNotifierProvider).id_token ?? '';
              // String accessToken = ref.read(signUpScreenNotifierProvider).access_token ?? '';
              // final res = await Supabase.instance.client.auth.signInWithIdToken(
              //     provider: OAuthProvider.google,
              //     idToken: idToken,
              //     accessToken: accessToken,
              //   );
              // final request = {
              //   'uuid': res.user?.id,
              //   'email': email,
              //   'name': '호날두',
              //   'fcm_token': '123456',
              //   'profile_image_url': '1234567',
              //   'id_token': idToken,
              //   'access_token': accessToken,
              //   // 'created_at': DateTime.now().toIso8601String(),
              // };
              
              // ref.read(signAsyncNotifierProvider.notifier).addProfie(request);
              ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signUpWithGoogle();
            },
            child: const Text('가입완료'),
          ),
        ],
      ),
    );
  }
}