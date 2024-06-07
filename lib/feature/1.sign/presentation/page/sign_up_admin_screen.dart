import 'package:footballclick/core/constants/enums.dart';

import '../../../../core/constants/index.dart';
import '../../../2.home/presentation/provider/player_async_notifier.dart';
import '../../../5.team/presentation/provider/team_register_notifier.dart';
import '../provider/supabase_auth_provider.async_notifier.dart';

class SignUpAdminScreen extends ConsumerStatefulWidget {
  const SignUpAdminScreen({super.key});

  @override
  ConsumerState<SignUpAdminScreen> createState() => _SignUpAdminScreenState();
}

class _SignUpAdminScreenState extends ConsumerState<SignUpAdminScreen> {
  int? _value = 1;
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController positionController = TextEditingController();
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
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              3,
              (int index) {
                return ChoiceChip(
                  // label: Text('Item $index'),
                  label: Text(AdminKind.values[index].name),
                  selected: _value == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? index : null;
                    });
                  },
                );
              },
            ).toList(),
          ),
          const Text('이름'),
          TextFormField(
            controller: nameController,
          ),
          const Text('나이'),
          TextFormField(
            controller: ageController,
          ),
          const Text('포지션'),
          TextFormField(
            controller: positionController,
          ),
          const SizedBox(height: 50,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print('>>>> teamName : ${ref.read(teamRegisterNotifierProvider).teamName}');
                // const HomeScreenRoute().go(context);
                final request = {
                  'name': nameController.text,
                  'position': positionController.text,
                  'teamRole': AdminKind.values[_value!].name,
                  'team_name': ref.read(teamRegisterNotifierProvider).teamName,
                };
                ref.read(playerAsyncNotifierProvider('').notifier).addPlayer(request, '');
                ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signUpWithGoogle();
              },
              child: const Text('가입완료'),
            ),
          ),
        ],
      ),
    );
  }
}