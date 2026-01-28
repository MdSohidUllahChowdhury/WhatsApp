import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class Calls extends StatelessWidget {
  const Calls({super.key});

  static final List<CallModel> _calls = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 6),
          _buildCreateCallLinkHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: _calls.length, // +1 for the "Create call link" header
              itemBuilder: (context, index) {
                final call = _calls[index];
                return _buildCallListItem(call);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TOD Implement new call functionality.
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add_ic_call, color: Colors.white),
      ),
    );
  }

  /// Builds the header for creating a call link.
  Widget _buildCreateCallLinkHeader() {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.teal,
        child: Icon(Icons.link, color: Colors.white),
      ),
      title: Text('Create call link'),
      subtitle: Text('Share a link for your WhatsApp call'),
    );
  }

  /// Builds a single list item for a call.
  Widget _buildCallListItem(CallModel call) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 28,
        backgroundColor: Colors.blueGrey,
      ),
      title: Text(call.name),
      subtitle: Row(
        children: [
          _getCallTypeIcon(call.type),
          const SizedBox(width: 8.0),
          Text(call.time),
        ],
      ),
      trailing: Icon(
        call.isVideoCall ? Icons.videocam : Icons.call,
        color: Colors.teal,
      ),
      onTap: () {
        // Implement action on call log tap.
      },
    );
  }

  /// Returns an icon indicating the call type (incoming, outgoing, missed).
  Widget _getCallTypeIcon(CallType type) {
    switch (type) {
      case CallType.incoming:
        return const Icon(FontAwesomeIcons.arrowsUpDownLeftRight,
            color: Colors.green, size: 16);
      case CallType.outgoing:
        return const Icon(FontAwesomeIcons.arrowUpRightFromSquare,
            color: Colors.green, size: 16);
      case CallType.missed:
        return const Icon(FontAwesomeIcons.arrowDown,
            color: Colors.red, size: 16);
    }
  }
}
