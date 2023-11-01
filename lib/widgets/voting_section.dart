import 'package:flutter/material.dart';

class VotingSection extends StatefulWidget {
  const VotingSection({Key? key}) : super(key: key);

  @override
  State<VotingSection> createState() => _VotingSectionState();
}

class _VotingSectionState extends State<VotingSection> {
  int tappedStarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2, 3, 4].map((index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  tappedStarIndex = index;
                });
              },
              icon: Icon(
                index <= tappedStarIndex
                    ? Icons.star
                    : Icons.star_border_outlined,
                size: 30,
              ),
            );
          }).toList(),
        ),
        SizedBox(
          height: 30,
          width: 110,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.check_circle,
                  size: 17,
                ),
                Text(
                  'دەنگدان',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
          height: 20,
        ),
      ],
    );
  }
}
