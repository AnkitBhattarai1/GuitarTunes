import 'package:flutter/material.dart';
import 'package:guitar_tunes/pages/EarTrainingPage.dart';

class EarTrainer extends StatefulWidget {
  const EarTrainer({super.key});

  @override
  State<EarTrainer> createState() => _EarTrainerState();
}

class _EarTrainerState extends State<EarTrainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        title: const Text("Ear Trainer"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).maybePop();
          },
        ),
      ),
      body: ListView(
        children: [
          optionlist(chordlist: const ["A", "C", "D"], listno: 0),
          optionlist(chordlist: const ["E", "F", "G"], listno: 1),
        ],
      ),
    );
  }
}

class optionlist extends StatelessWidget {
  late List<String> chordlist;
  late int listno;
  optionlist({
    super.key,
    required this.chordlist,
    required this.listno,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      elevation: 20,
      child: ListTile(
        title: const Text(
          "Basic Chords",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${chordlist[0]},${chordlist[1]},${chordlist[2]}",
          style: const TextStyle(
              wordSpacing: 5, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        enableFeedback: false,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EarTrainingPage(
                listno: listno,
              ),
            ),
          );
        },
      ),
    );
  }
}
