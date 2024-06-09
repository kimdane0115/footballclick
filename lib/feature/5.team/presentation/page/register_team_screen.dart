import 'package:footballclick/feature/5.team/presentation/provider/team_async_notifier.dart';
import 'package:footballclick/feature/5.team/presentation/provider/team_register_notifier.dart';

import '../../../../core/constants/index.dart';

class RegisterTeamScreen extends ConsumerStatefulWidget {
  const RegisterTeamScreen({super.key});

  @override
  ConsumerState<RegisterTeamScreen> createState() => _RegisterTeamScreenState();
}

class _RegisterTeamScreenState extends ConsumerState<RegisterTeamScreen> {
  @override
  Widget build(BuildContext context) {

    ref.listen(
      teamAsyncNotifierProvider,
      (prev, next) {
        next.whenOrNull(
          data: (data) async {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Column(
                    children: [
                      // Text(data ?? ''),
                      // CloseButton(
                      //   onPressed: () {
                      //     context.pop();
                      //     if (data == '등록 완료') context.pop();
                      //   },
                      // ),
                    ],
                  ),
                );
              },
            );
          },
        );
      }
    );

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
          const Text('팀 이름'),
          TextFormField(
            onChanged: (value) {
              ref.read(teamRegisterNotifierProvider.notifier).setTeamName(value);
            },
          ),
          const Text('지역'),
          TextFormField(
            onChanged: (value) {
              ref.read(teamRegisterNotifierProvider.notifier).setRegion(value);
            },
          ),
          const Text('연령대'),
          TextFormField(
            onChanged: (value) {
              
            },
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () async {
              String? teamName = ref.read(teamRegisterNotifierProvider).teamName;
              String region = ref.read(teamRegisterNotifierProvider).region;
              final request = {
                'teamName': teamName,
                'region': region,
              };
              ref.read(teamAsyncNotifierProvider.notifier).addTeam(request);
            },
            child: const Text('등록 완료'),
          ),
        ],
      ),
    );
  }
}