import '../../../../core/constants/index.dart';

class SignUpAdminScreen extends ConsumerStatefulWidget {
  const SignUpAdminScreen({super.key});

  @override
  ConsumerState<SignUpAdminScreen> createState() => _SignUpAdminScreenState();
}

class _SignUpAdminScreenState extends ConsumerState<SignUpAdminScreen> {
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
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  const FindTeamScreenRoute().push(context);
                },
                child: const Text('팀 찾기'),
              ),
              const SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {
                  const RegisterTeamScreenRoute().push(context);
                },
                child: const Text('팀 등록'),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Text('직책'),
          TextFormField(
      
          ),
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
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                const HomeScreenRoute().go(context);
              },
              child: const Text('가입완료'),
            ),
          ),
        ],
      ),
    );
  }
}