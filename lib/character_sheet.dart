import 'package:flutter/material.dart';

class CharacterSheet extends StatefulWidget {
  const CharacterSheet({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CharacterSheetState createState() => _CharacterSheetState();
}

class _CharacterSheetState extends State<CharacterSheet> {
  int strength = 10,
      dexterity = 10,
      constitution = 10,
      intelligence = 10,
      wisdom = 10,
      charisma = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Attributes'),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Strength'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) =>
                        setState(() => strength = int.parse(value)),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Dexterity'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) =>
                        setState(() => dexterity = int.parse(value)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration:
                        const InputDecoration(labelText: 'Constitution'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) =>
                        setState(() => constitution = int.parse(value)),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: TextField(
                    decoration:
                        const InputDecoration(labelText: 'Intelligence'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) =>
                        setState(() => intelligence = int.parse(value)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Wisdom'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) =>
                        setState(() => wisdom = int.parse(value)),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Charisma'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) =>
                        setState(() => charisma = int.parse(value)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                // handle saving the character sheet data
                print(strength);
              },
            ),
          ],
        ),
      ),
    );
  }
}
