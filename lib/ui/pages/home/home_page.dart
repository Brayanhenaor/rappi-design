import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rappi_clon/data/repositories/categories_repository.dart';
import 'package:rappi_clon/domain/controllers/home/home_controller.dart';
import 'package:rappi_clon/ui/pages/home/widgets/categories.dart';
import 'package:rappi_clon/ui/widgets/bottom_nav_bar.dart';
import 'package:rappi_clon/ui/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      extendBody: true,
      bottomNavigationBar: Builder(
        builder: (context) => BottomNavBar(
          openDrawer: _key.currentState?.openDrawer ?? () => {},
        ),
      ),
      backgroundColor: Colors.white,
      drawer: const CustomDrawer(),
      body: GetBuilder<HomeController>(
        builder: (controller) => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const _DirectionSelect(),
                  const _Banner(),
                  const _SearchInput(),
                  const SizedBox(height: 10),
                  Categories(
                    categories: controller.categories,
                  ),
                  const SizedBox(height: 30),
                  const _RappiCardButton(),
                  SizedBox(
                    height: 110,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RappiCardButton extends StatelessWidget {
  const _RappiCardButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: const [
          Expanded(
            child: Image(
              alignment: Alignment.center,
              height: 30,
              image: AssetImage('assets/RappiCard.png'),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _SearchInput extends StatelessWidget {
  const _SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
          hintText: 'What do you want today?',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        'assets/banner.jpeg',
      ),
      width: double.infinity,
      height: 200,
    );
  }
}

class _DirectionSelect extends StatelessWidget {
  const _DirectionSelect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.person_pin_circle_rounded,
          color: Colors.orange[900],
          size: 26,
        ),
        const SizedBox(width: 3),
        const Text(
          'Cl 27B #57-9',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Icon(
          Icons.arrow_drop_down,
          color: Colors.orange,
          size: 28,
        ),
      ],
    );
  }
}
