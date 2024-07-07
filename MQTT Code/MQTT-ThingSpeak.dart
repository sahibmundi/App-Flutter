import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

dynamic jsonPayload;
int channelId = 2591041;

MqttServerClient client = MqttServerClient.withPort('mqtt3.thingspeak.com', 'EhQpBAI0BS8iHzc1FwU9GCY', 1883);

Future<void>  connectBroker() async {

client.setProtocolV31();

client.keepAlivePeriod = 60;

final connMessage = MqttConnectMessage()
    .authenticateAs('EhQpBAI0BS8iHzc1FwU9GCY', 'LwnPAQUWfVG5RgLJHe86oZ8D')
    .startClean()
    .withWillQos(MqttQos.atMostOnce);

client.connectionMessage = connMessage;

try {
  print('Connecting');
  await client.connect();
} catch (e) {
  print('Exception: $e');
  client.disconnect();
}

print("connected");

print("subscribing...!");

String topic1_sub = "channels/$channelId/subscribe";

client.subscribe(topic1_sub, MqttQos.atMostOnce);

// onSubscribe Callback
client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
  final recMessage = c![0].payload as MqttPublishMessage;
  final topic = {c[0].topic};
  final payload = MqttPublishPayload.bytesToStringAsString(recMessage.payload.message);
  print('Received message:$payload from topic: $topic');
  jsonPayload = jsonDecode(payload);
});

print("subscribed.");

print("publishing.");

String topic1_pub = "channels/$channelId/publish";
final builder = MqttClientPayloadBuilder();
String msg = "field1=30&field2=0&status=ok";
builder.addString(msg);

client.publishMessage(topic1_pub, MqttQos.atMostOnce, builder.payload!);

print("published.");

}

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "my app",
      home: MyLayout()
    );
  }
}

class MyLayout extends StatefulWidget {
  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {

  String field1_value = "";

  @override
  void initState() {
    connectBroker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Field1: $field1_value"),
          ElevatedButton(onPressed: () async {
            // await connectBroker();
            if(jsonPayload != null){
              field1_value = jsonPayload['field1'];
              setState(() {
                
              });
            }
          }, child: Text("Get data!")),
        ],),
      ),
    );
  }
}