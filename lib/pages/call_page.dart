import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 944978892, // Fill in the appId that you get from ZEGOCLOUD Admin Console.
      appSign: '5209ad96f6d41f612ac71d2e36500d82c8a910ec71f887423e1cf73b209517bb', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: 'User 1',
      userName: 'uOne',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
