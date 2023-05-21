import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_apps/screen/home_screen.dart';
import 'package:weather_apps/service/weather_provider.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderWeather>(context, listen: false);
    final textProvider =
        Provider.of<ProviderTextController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Weather  App'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textProvider.latitudeController,
                decoration: InputDecoration(
                  hintText: 'Enter Latitude',
                  label: Text('Enter Latitude'),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 3,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textProvider.longitudeController,
                decoration: InputDecoration(
                  hintText: 'Enter Longitude',
                  label: Text('Enter Longitude'),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 3,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 3)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: IconButton(
                onPressed: () {
                  provider.get(textProvider.latitudeController.text,
                      textProvider.longitudeController.text);
                  textProvider.clearText();

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
