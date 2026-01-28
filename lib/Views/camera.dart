// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';

// List<CameraDescription> cameras = [];

// class CameraScreen extends StatefulWidget {
//   const CameraScreen({super.key});

//   @override
//   State<CameraScreen> createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen>
//     with WidgetsBindingObserver {
//   //! Camera Functionality
//   CameraController? cameraController;
//   late Future<void> pickCamera;
//   int selectedCameraIdx = 0;
//   XFile? lastPicture;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     pickCamera = initCamera();
//   }

//   Future<void> initCamera([int index = 0]) async {
//     cameras = await availableCameras();
//     // Debug log: list cameras
//     // print available camera descriptions so developer can see what's found
//     // e.g. in simulator this may be empty
//     // ignore: avoid_print
//     print('available cameras: $cameras');
//     if (cameras.isEmpty) {
//       // No cameras available; leave controller null
//       return;
//     }
//     selectedCameraIdx = index.clamp(0, cameras.length - 1);
//     final desc = cameras[selectedCameraIdx];

//     // Dispose previous controller if present
//     await cameraController?.dispose();

//     cameraController =
//         CameraController(desc, ResolutionPreset.high, enableAudio: false);
//     try {
//       await cameraController!.initialize();
//     } catch (e) {
//       // Let FutureBuilder show the error via snapshot.error
//       rethrow;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           FutureBuilder<void>(
//             future: pickCamera,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 if (cameraController == null ||
//                     !cameraController!.value.isInitialized) {
//                   return Center(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Text('No camera available'),
//                         const SizedBox(height: 12),
//                         ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               pickCamera = initCamera();
//                             });
//                           },
//                           child: const Text('Retry'),
//                         ),
//                         const SizedBox(height: 8),
//                         Text('Found ${cameras.length} cameras'),
//                       ],
//                     ),
//                   );
//                 }

//                 return Stack(
//                   children: [
//                     CameraPreview(cameraController!),
//                     // Controls
//                     Positioned(
//                       left: 16,
//                       top: 40,
//                       child: IconButton(
//                         color: Colors.white,
//                         iconSize: 30,
//                         icon: const Icon(Icons.switch_camera),
//                         onPressed: cameras.length > 1
//                             ? () async {
//                                 final next =
//                                     (selectedCameraIdx + 1) % cameras.length;
//                                 setState(() {
//                                   pickCamera = initCamera(next);
//                                 });
//                               }
//                             : null,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 30,
//                       left: 0,
//                       right: 0,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           GestureDetector(
//                             onTap: () async {
//                               await _takePicture();
//                             },
//                             child: Container(
//                               width: 72,
//                               height: 72,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border:
//                                     Border.all(color: Colors.white, width: 4),
//                               ),
//                               child: const Center(
//                                 child: Icon(
//                                   Icons.camera_alt,
//                                   color: Colors.white,
//                                   size: 32,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     if (lastPicture != null)
//                       Positioned(
//                         right: 16,
//                         bottom: 30,
//                         child: GestureDetector(
//                           onTap: () {
//                             // Optionally open the picture or share
//                           },
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(8),
//                             child: Image.file(
//                               File(lastPicture!.path),
//                               width: 64,
//                               height: 64,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       )
//                   ],
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(
//                   child: Text('Camera error: ${snapshot.error}'),
//                 );
//               } else {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             },
//           )
//         ],
//       ),
//     );
//   }

//   Future<void> _takePicture() async {
//     if (cameraController == null || !cameraController!.value.isInitialized) {
//       return;
//     }
//     try {
//       // Prevent multiple takes
//       if (cameraController!.value.isTakingPicture) {
//         return;
//       }
//       final XFile file = await cameraController!.takePicture();

//       // Save to temporary directory with a timestamped name
//       final Directory tempDir = await getTemporaryDirectory();
//       final String fileName =
//           'photo_${DateTime.now().millisecondsSinceEpoch}${p.extension(file.path)}';
//       final String newPath = p.join(tempDir.path, fileName);
//       final saved = await File(file.path).copy(newPath);

//       setState(() {
//         lastPicture = XFile(saved.path);
//       });

//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Picture saved to temp directory')),
//         );
//       }
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text('Error taking picture: $e')));
//       }
//     }
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     final CameraController? controller = cameraController;

//     if (controller == null || !controller.value.isInitialized) {
//       return;
//     }

//     if (state == AppLifecycleState.inactive) {
//       controller.dispose();
//     } else if (state == AppLifecycleState.resumed) {
//       // Reinitialize the camera when app resumes
//       setState(() {
//         pickCamera = initCamera(selectedCameraIdx);
//       });
//     }
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     cameraController?.dispose();
//     super.dispose();
//   }
// }
