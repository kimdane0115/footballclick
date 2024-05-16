
import '../../../../core/constants/index.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('회원 유형을 선택해주세요.'),
          const SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 160,
                height: 160,
                child: ElevatedButton(
                  onPressed: () {
                    const SignUpAdminScreenRoute().push(context);
                  },
                  child: const Text('관리자'),
                ),
              ),
              const SizedBox(width: 20,),
              SizedBox(
                width: 160,
                height: 160,
                child: ElevatedButton(
                  onPressed: () {
                      const SignUpPlayerScreenRoute().push(context);
                  },
                  child: const Text('선수'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}