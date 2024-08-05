import 'package:footballclick/core/constants/enums.dart';
import 'package:footballclick/feature/1.sign/presentation/provider/sign_up_screen_provider_notifier.dart';

import '../../../../core/constants/index.dart';
import '../../../5.team/presentation/provider/team_register_notifier.dart';

class SignUpAdminScreen extends ConsumerStatefulWidget {
  const SignUpAdminScreen({super.key});

  @override
  ConsumerState<SignUpAdminScreen> createState() => _SignUpAdminScreenState();
}

class _SignUpAdminScreenState extends ConsumerState<SignUpAdminScreen> {
  int? _value = 0;
  int? _valueAge = 0;
  int? _valuePosition = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     context.pop();
        //   },
        //   icon: const Icon(Icons.arrow_back),
        // ),
      ),
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
                  ref.read(signUpScreenProviderNotifierProvider.notifier).setTeamName('');
                  const FindTeamScreenRoute().push(context).then((onValue) {
                    print('>>>>>>> value : $onValue');
                  });
                  
                },
                child: const Text('팀 찾기'),
              ),
              const SizedBox(width: 20,),
              Visibility(
                visible: _value == 0,
                child: ElevatedButton(
                  onPressed: () {
                    const RegisterTeamScreenRoute().push(context);
                  },
                  child: const Text('팀 등록'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Text(ref.watch(signUpScreenProviderNotifierProvider).teamName),
          const SizedBox(height: 20,),
          const Text('이름'),
          TextFormField(
            controller: nameController,
          ),
          const Text('직책'),
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              2,
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
          const Text('나이'),
          // TextFormField(
          //   controller: ageController,
          // ),
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              6,
              (int index) {
                return ChoiceChip(
                  // label: Text('Item $index'),
                  label: Text(MemberAge.values[index].name),
                  selected: _valueAge == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _valueAge = selected ? index : null;
                    });
                  },
                );
              },
            ).toList(),
          ),
          const Text('포지션'),
          // TextFormField(
          //   controller: positionController,
          // ),
          Wrap(
            spacing: 5.0,
            children: List<Widget>.generate(
              5,
              (int index) {
                return ChoiceChip(
                  // label: Text('Item $index'),
                  label: Text(PlayerPosition.values[index].name),
                  selected: _valuePosition == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _valuePosition = selected ? index : null;
                    });
                  },
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 50,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print('>>>> teamName : ${ref.read(signUpScreenProviderNotifierProvider).teamName}');
                // const HomeScreenRoute().go(context);
                // final request = {
                //   'name': nameController.text,
                //   'position': positionController.text,
                //   'teamRole': AdminKind.values[_value!].name,
                //   'teamName': ref.read(teamRegisterNotifierProvider).teamName,
                // };
                // ref.read(playerAsyncNotifierProvider('').notifier).addPlayer(request, '');
                // ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signUpWithGoogle();
              },
              child: const Text('가입완료'),
            ),
          ),
        ],
      ),
    );
  }
}