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
    )
  }
}