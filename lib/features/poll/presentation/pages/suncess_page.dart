import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poll_flutter/features/poll/index.dart';

class SuccessPage extends StatelessWidget {
  final Poll? poll;
  const SuccessPage({Key? key, this.poll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Survey Completed",
            style: GoogleFonts.openSans(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (poll != null) Image.network(poll!.imageUrl),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              poll?.finishText ?? "",
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(100, 48)),
                child: Text('Close',
                    style: GoogleFonts.openSans(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    )),
                onPressed: () {}),
          )
        ],
      ),
    );
    if (poll != null) return Container();
  }
}
