import 'package:footballclick/feature/5.team/presentation/provider/team_async_notifier.dart';
import 'package:footballclick/feature/5.team/presentation/provider/team_register_notifier.dart';

import '../../../../core/constants/index.dart';

class FindTeamScreen extends ConsumerStatefulWidget {
  const FindTeamScreen({super.key});

  @override
  ConsumerState<FindTeamScreen> createState() => _FindTeamScreenState();
}

class _FindTeamScreenState extends ConsumerState<FindTeamScreen> {
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
                      Text(data ?? ''),
                      CloseButton(
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      }
    );

    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('팀 이름'),
          TextFormField(
            onChanged: (value) {
              ref.read(teamFindNotifierProvider.notifier).setFindTeamName(value);
            },
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () async {
              String findTeamName = ref.read(teamFindNotifierProvider);
              ref.read(teamAsyncNotifierProvider.notifier).findTeam(findTeamName);
            },
            child: const Text('검색'),
          ),
        ],
      ),
    );
  }
}