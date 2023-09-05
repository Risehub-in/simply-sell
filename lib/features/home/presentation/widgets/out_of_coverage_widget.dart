import 'package:flutter/material.dart';

class OutOfCoverageWidget extends StatelessWidget {
  const OutOfCoverageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.not_listed_location_outlined,
                size: 100,
              ),
              SizedBox(height: 32),
              Text(
                "We don't deliver here yet",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
