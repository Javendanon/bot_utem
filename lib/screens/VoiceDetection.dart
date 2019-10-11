import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_recognition/speech_recognition.dart';


class voiceDetectionScreen extends StatelessWidget {
  @override 
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Voice detection test')
      ),
      body: new Checkbox(
        value: false,
        onChanged: null,
      )
    );
  }
}
class voiceDetection extends StatefulWidget{
  @override
  _voiceDetectionState createState() => _voiceDetectionState();
}

class _voiceDetectionState extends State<voiceDetection> {
  SpeechRecognition _speechRecognition;
  bool _isAvailabke = false;
  bool _isListening = false;

  String resultText = '';

  @override
  void initState(){
    super.initState();
  }
  void initSpeechRecognizer(){
    _speechRecognition = SpeechRecognition();
    _speechRecognition.setAvailabilityHandler(
      (bool result) => setState(()=> _isAvailabke = result)
      );
    _speechRecognition.setRecognitionStartedHandler(
      () => setState(() => _isListening = true)
    );
    _speechRecognition.setRecognitionResultHandler(
      (String speech) => setState( () => resultText = speech)
    );
    _speechRecognition.setRecognitionCompleteHandler(
      () => setState(()=> _isListening = false)
    );
    _speechRecognition.activate().then(
      (result) => setState(()=> _isAvailabke = result)
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Row(
              children: <Widget> [
                FloatingActionButton(
                  onPressed: (){},
                ),
                FloatingActionButton(
                  onPressed: (){},
                ),
                FloatingActionButton(
                  onPressed: (){} ,
                )
              ]
            )
          ]
        )
      )
    );
  }
}