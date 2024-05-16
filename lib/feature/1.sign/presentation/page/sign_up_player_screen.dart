import '../../../../core/constants/index.dart';

class SignUpPlayerScreen extends StatefulWidget {
  const SignUpPlayerScreen({super.key});

  @override
  State<SignUpPlayerScreen> createState() => _SignUpPlayerScreenState();
}

class _SignUpPlayerScreenState extends State<SignUpPlayerScreen> {
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
            const HomeScreenRoute().go(context);
          },
          child: const Text('가입완료'),
        ),
      ],
    );
  }
}