import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Enum to represent the different types of calls.
enum CallType { incoming, outgoing, missed }

// Model class for a single call log entry.
class CallModel {
  final String name;
  final String time;
  final CallType type;
  final bool isVideoCall;
  final String avatarUrl; // Can be a URL or a local asset path.

  CallModel({
    required this.name,
    required this.time,
    required this.type,
    required this.isVideoCall,
    this.avatarUrl = '', // Default to an empty string.
  });
}

/// A screen that displays a list of recent calls, similar to WhatsApp.
class Calls extends StatelessWidget {
  const Calls({super.key});

  // Dummy data for the call log.
  static final List<CallModel> _calls = [
    CallModel(
        name: 'Iron Man',
        time: 'Today, 10:30 AM',
        type: CallType.missed,
        isVideoCall: true,
        avatarUrl: 'asset/Bhai.jpg'),
    CallModel(
        name: 'Captain America',
        time: 'Today, 9:15 AM',
        type: CallType.incoming,
        isVideoCall: false,
        avatarUrl: 'asset/FB.jpg'),
    CallModel(
        name: 'Thor',
        time: 'Yesterday, 8:45 PM',
        type: CallType.outgoing,
        isVideoCall: true,
        avatarUrl: 'asset/Picture01.jpg'),
    CallModel(
        name: 'Hulk',
        time: 'Yesterday, 6:00 PM',
        type: CallType.incoming,
        isVideoCall: false),
    CallModel(
        name: 'Black Widow',
        time: 'September 15, 2:30 PM',
        type: CallType.missed,
        isVideoCall: false),
    CallModel(
        name: 'Hawkeye',
        time: 'September 15, 11:00 AM',
        type: CallType.outgoing,
        isVideoCall: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _calls.length + 1, // +1 for the "Create call link" header
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildCreateCallLinkHeader();
          }
          final call = _calls[index - 1];
          return _buildCallListItem(call);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement new call functionality.
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
      leading: CircleAvatar(
        radius: 28,
        backgroundImage:
            call.avatarUrl.isNotEmpty ? AssetImage(call.avatarUrl) : null,
        child: call.avatarUrl.isEmpty
            ? const Icon(Icons.person, size: 30, color: Colors.white)
            : null,
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
