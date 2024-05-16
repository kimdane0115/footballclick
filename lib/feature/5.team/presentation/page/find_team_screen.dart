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
      body: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    return Container();
  }
}