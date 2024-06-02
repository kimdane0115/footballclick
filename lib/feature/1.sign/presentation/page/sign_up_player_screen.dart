import 'package:footballclick/feature/1.sign/presentation/provider/sign_async_notifier.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('팀 찾기'),
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
        ElevatedButton(
          onPressed: () {
            // const HomeScreenRoute().go(context);
            final request = {
              'name': '호날두',
              'fcm_token': '123456',
              'profile_image_url': '1234567',
              'created_at': DateTime.now().toIso8601String(),
            };
            ref.read(signAsyncNotifierProvider.notifier).addProfie(request);
          },
          child: const Text('가입완료'),
        ),
      ],
    );
  }
}