import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rappi_clon/domain/models/list_option.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffF2F4F6),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hi',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Text(
                  'Brayan',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 21,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _UserOptions(),
          const SizedBox(
            height: 40,
          ),
          const _PrimeBanner(),
          const SizedBox(
            height: 20,
          ),
          _ListOptions(
            title: 'Deals and credits',
            options: [
              ListOption(
                'Credits',
                Icons.money,
                trailingCredits,
              ),
              ListOption(
                'Coupons',
                Icons.card_giftcard,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          _ListOptions(
            title: 'My Account',
            options: [
              ListOption(
                'RappiPrime',
                Icons.perm_identity,
              ),
              ListOption(
                'My Pets',
                Icons.pets_outlined,
              ),
              ListOption(
                'RappiPay',
                Icons.payment_outlined,
              ),
              ListOption(
                'Adresses',
                Icons.pin_drop_outlined,
              ),
              ListOption('Invoicing data', Icons.blinds_closed),
            ],
          ),
        ],
      ),
    );
  }
}

final trailingCredits = Text(
  '\$13.000',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey[700],
  ),
);

class _ListOptions extends StatelessWidget {
  final String title;
  final List<ListOption> options;

  const _ListOptions({
    Key? key,
    required this.title,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey[800],
                size: 17,
              )
            ],
          ),
        ),
        Column(
          children: options
              .map(
                (option) => ListTile(
                  minLeadingWidth: 0,
                  tileColor: Colors.white,
                  leading: Icon(
                    option.leading,
                    color: Colors.grey[800],
                  ),
                  trailing: option.trailing,
                  title: Text(option.title),
                  onTap: () {},
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _PrimeBanner extends StatelessWidget {
  const _PrimeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Prime users save',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: '\$56.000 ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'on average\nper month',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Image(
                  alignment: Alignment.centerRight,
                  height: 35,
                  image: AssetImage(
                    'assets/prime.png',
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Save now',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _UserOptions extends StatelessWidget {
  final List<ListOption> options = [
    ListOption(
      'User\nProfile',
      Icons.person,
    ),
    ListOption(
      'Help\nCenter',
      Icons.headphones,
    ),
    ListOption(
      'Orders\nHistory',
      Icons.history,
    ),
    ListOption(
      'Payment\nMethod',
      Icons.wallet,
    ),
  ];

  _UserOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(-3, 5),
            blurRadius: 6,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: options
            .map(
              (option) => InkWell(
                onTap: () => {},
                child: Column(
                  children: [
                    Icon(
                      option.leading,
                      size: 22,
                      color: Colors.grey[600],
                    ),
                    Text(
                      option.title,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
