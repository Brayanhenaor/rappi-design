import 'package:flutter/material.dart';
import 'package:rappi_clon/ui/pages/rappicard/widgets/rappi_card_information.dart';
import 'package:rappi_clon/ui/widgets/appbar_back_leading.dart';

class RappiCardHomePage extends StatelessWidget {
  const RappiCardHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeading(),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        actions: const [
          _SettingsIcon(),
        ],
        title: const _AppBarTitle(),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [
            CardInformation(
              light: false,
              icon: Icons.credit_card,
              available: 7600000,
              used: 0,
              title: 'RappiCard',
            ),
            CardInformation(
              shadow: true,
              light: true,
              icon: Icons.credit_card,
              available: 7600000,
              used: 0,
              title: 'RappiCuenta',
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingsIcon extends StatelessWidget {
  const _SettingsIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: const Icon(
          Icons.settings_outlined,
          color: Colors.black,
          size: 24,
        ),
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Hi Brayan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Last connection: Aug 17, 2022, 6:51 PM',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
