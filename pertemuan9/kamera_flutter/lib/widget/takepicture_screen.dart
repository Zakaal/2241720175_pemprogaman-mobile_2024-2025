import 'package:flutter/material.dart'; // Mengimpor paket Material
import 'package:camera/camera.dart'; // Mengimpor paket kamera
import 'displaypicture_screen.dart'; // Pastikan untuk mengimpor file ini


// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture - 2241720175')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Jika Future telah selesai, tampilkan pratinjau.
            return CameraPreview(_controller);
          } else {
            // Jika tidak, tampilkan indikator loading.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      // Tambahkan FloatingActionButton di sini
      floatingActionButton: FloatingActionButton(
        // Berikan callback onPressed.
        onPressed: () async {
        // Take the Picture in a try / catch block. If anything goes wrong,
        // catch the error.
        try {
          // Ensure that the camera is initialized.
          await _initializeControllerFuture;

          // Attempt to take a picture and get the file `image`
          // where it was saved.
          final image = await _controller.takePicture();

          // Check if the context is still mounted
          if (!context.mounted) return;

          // If the picture was taken, display it on a new screen.
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DisplayPictureScreen(
                // Pass the automatically generated path to
                // the DisplayPictureScreen widget.
                imagePath: image.path,
              ),
            ),
          );
        } catch (e) {
          // If an error occurs, log the error to the console.
          print(e);
        }
      },

        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
