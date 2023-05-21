import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.wind_power,
                  color: Colors.yellow,
                ),
                Text(
                  " 4km/h",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  'Wind',
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.water_drop_outlined,
                  color: Colors.yellow,
                ),
                Text(
                  " 48%",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  'Humidity',
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.yellow,
                ),
                Text(
                  " 1.6Km",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  'Visiility',
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
