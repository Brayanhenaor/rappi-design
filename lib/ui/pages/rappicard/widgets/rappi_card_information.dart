import 'package:flutter/material.dart';

class CardInformation extends StatelessWidget {
  final bool shadow;
  final bool light;
  final IconData icon;
  final double available;
  final double used;
  final String title;

  const CardInformation({
    Key? key,
    this.light = true,
    required this.icon,
    required this.available,
    required this.used,
    required this.title,
    this.shadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: shadow
            ? const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  spreadRadius: 4,
                )
              ]
            : null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                blurRadius: 20,
                spreadRadius: 10,
              )
            ],
            color: light ? Colors.white : Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                _CardTitle(
                  title: title,
                  icon: icon,
                  light: light,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                _AvailableAmount(
                  light: light,
                ),
                const SizedBox(
                  height: 10,
                ),
                const _UsedAmount(),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 75,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.attach_money,
                                size: 30,
                              ),
                              Text(
                                'Pay\ncard',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    itemCount: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UsedAmount extends StatelessWidget {
  const _UsedAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Used balance',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          '\$ 0,00',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class _AvailableAmount extends StatelessWidget {
  final bool light;

  const _AvailableAmount({
    Key? key,
    required this.light,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Available',
          style: TextStyle(
            color: light ? Colors.black : Colors.white,
          ),
        ),
        Text(
          '\$7.600.000,00',
          style: TextStyle(
            color: light ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class _CardTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool light;

  const _CardTitle({
    Key? key,
    this.light = true,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: light ? Colors.black : Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Icon(
              icon,
              color: light ? Colors.black : Colors.white,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: light ? Colors.black : Colors.white,
            )
          ],
        ),
      ],
    );
  }
}
