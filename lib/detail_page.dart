// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class DetailPage extends StatefulWidget {
//   const DetailPage({super.key});

//   @override
//   State<DetailPage> createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   late VideoPlayerController _controller;
//   bool _isInitialized = false;

//   @override
//   void initState() {
//     super.initState();
//     // Memuat video lokal dari assets
//     _controller = VideoPlayerController.asset('assets/videos/tugas2Mola.mp4')
//       ..initialize().then((_) {
//         setState(() {
//           _isInitialized = true;
//         });
//       });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final args = ModalRoute.of(context)?.settings.arguments as String?;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail / Video Player'),
//         backgroundColor: const Color(0xFFE1E5FF),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // --- AREA PEMUTAR VIDEO (MENGGANTIKAN ICON STATIS) ---
//               _isInitialized
//                   ? Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 24),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         color: Colors.black,
//                       ),
//                       clipBehavior: Clip.antiAlias,
//                       child: Column(
//                         children: [
//                           AspectRatio(
//                             aspectRatio: _controller.value.aspectRatio,
//                             child: VideoPlayer(_controller),
//                           ),
//                           Container(
//                             color: const Color(0xFFF7F5FB),
//                             padding: const EdgeInsets.symmetric(vertical: 4),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 IconButton(
//                                   iconSize: 36,
//                                   color: const Color(0xFF4D63D9),
//                                   icon: Icon(
//                                     _controller.value.isPlaying
//                                         ? Icons.pause_circle_filled
//                                         : Icons.play_circle_filled,
//                                   ),
//                                   onPressed: () {
//                                     setState(() {
//                                       _controller.value.isPlaying
//                                           ? _controller.pause()
//                                           : _controller.play();
//                                     });
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   : const CircularProgressIndicator(),

//               const SizedBox(height: 20),
//               // Text(
//               //   args ?? 'Ini adalah halaman video',
//               //   style: const TextStyle(fontSize: 18, fontFamily: 'Poppins'),
//               //   textAlign: TextAlign.center,
//               // ),
//               const SizedBox(height: 30),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: const Icon(Icons.arrow_back),
//                 label: const Text('Kembali ke beranda'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: const Center(
        child: Hero(
          tag: 'hero-ikon',
          child: Icon(
            Icons.rocket_launch,
            size: 160,
            color: Colors.indigo,
            semanticLabel: 'Ikon roket',
          ),
        ),
      ),
    );
  }
}