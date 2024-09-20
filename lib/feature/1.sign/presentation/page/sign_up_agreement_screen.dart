import '../../../../index.dart';

class SignUpAgreementScreen extends ConsumerStatefulWidget {
  const SignUpAgreementScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpAgreementScreenState();
}

class _SignUpAgreementScreenState extends ConsumerState<SignUpAgreementScreen> {
  
  bool _isTermsAccepted = false;
  bool _isPrivacyPolicyAccepted = false;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입 동의'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '회원가입을 위해 아래 약관에 동의해주세요.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('이용약관에 동의합니다.'),
              value: _isTermsAccepted,
              onChanged: (bool? value) {
                setState(() {
                  _isTermsAccepted = value ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: const Text('자세히 보기'),
              ),
            ),
            // AnimatedContainer(
            //   duration: Duration(milliseconds: 10000), // 애니메이션 지속 시간
            //   curve: Curves.easeInOut, // 애니메이션 커브
            //   child: Text(
            //     _isExpanded ? '11111111111111111111111111111111111111111111111111111' : '', // 텍스트 상태에 따라 변경
            //     style: TextStyle(fontSize: 16.0),
            //     maxLines: _isExpanded ? null : 2, // 줄 수 제한 (펼친 상태면 제한 없음)
            //     overflow: TextOverflow.fade, // 텍스트가 넘치면 페이드 처리
            //   ),
            // ),
            Visibility(
              visible: _isExpanded,
              child: AnimatedContainer(
                margin: const EdgeInsets.all(4),
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastLinearToSlowEaseIn,
                color: Colors.grey[100],
                child: Text(
                  _isExpanded ? '11111111111111111111111111111111111111111111111111111' : '', // 텍스트 상태에 따라 변경
                  style: TextStyle(fontSize: 16.0),
                  maxLines: _isExpanded ? null : 2, // 줄 수 제한 (펼친 상태면 제한 없음)
                  overflow: TextOverflow.fade, // 텍스트가 넘치면 페이드 처리
                ),
              ),
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('개인정보 처리방침에 동의합니다.'),
              value: _isPrivacyPolicyAccepted,
              onChanged: (bool? value) {
                setState(() {
                  _isPrivacyPolicyAccepted = value ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: const Text('자세히 보기'),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isTermsAccepted && _isPrivacyPolicyAccepted
                        ? () {
                            // 동의 버튼 클릭 시 처리 로직
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('동의 완료'),
                                content: Text('회원가입 동의가 완료되었습니다.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('확인'),
                                  ),
                                ],
                              ),
                            );
                          }
                        : null,
                    child: Text('동의'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // 취소 버튼 클릭 시 처리 로직
                      Navigator.of(context).pop();
                    },
                    child: Text('취소'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}