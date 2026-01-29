import 'package:flutter/material.dart';

enum CallType { incoming, outgoing, missed }

class CallModel {
  final String name;
  final String time;
  final CallType type;
  final bool isVideoCall;
  final Icon avatarUrl;

  CallModel(
      {required this.name,
      required this.time,
      required this.type,
      required this.isVideoCall,
      required this.avatarUrl});
}

final List<CallModel> calls = [
  CallModel(
      name: 'Iron Man',
      time: 'Today, 10:30 AM',
      type: CallType.missed,
      isVideoCall: true,
      avatarUrl: const Icon(Icons.person, color: Colors.white)),
  CallModel(
      name: 'Captain America',
      time: 'Today, 9:15 AM',
      type: CallType.incoming,
      isVideoCall: false,
      avatarUrl: const Icon(Icons.person, color: Colors.white)),
  CallModel(
      name: 'Thor',
      time: 'Yesterday, 8:45 PM',
      type: CallType.outgoing,
      isVideoCall: true,
      avatarUrl: const Icon(Icons.person, color: Colors.white)),
  CallModel(
      name: 'Hulk',
      time: 'Yesterday, 6:00 PM',
      type: CallType.incoming,
      isVideoCall: false,
      avatarUrl: const Icon(Icons.person, color: Colors.white)),
  CallModel(
      name: 'Black Widow',
      time: 'September 15, 2:30 PM',
      type: CallType.missed,
      isVideoCall: false,
      avatarUrl: const Icon(Icons.person, color: Colors.white)),
  CallModel(
      name: 'Hawkeye',
      time: 'September 15, 11:00 AM',
      type: CallType.outgoing,
      isVideoCall: true,
      avatarUrl: const Icon(Icons.person, color: Colors.white)),
];
