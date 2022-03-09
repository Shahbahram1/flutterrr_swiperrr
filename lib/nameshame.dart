import 'package:flutter/material.dart';

class persInfo extends StatefulWidget {
  @override
  State<persInfo> createState() => _persInfoState();
}

class _persInfoState extends State<persInfo> {
  Helper helper;
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (helper == null) {
      helper = Helper(context, size, showProgressDialog, updateState);
    }
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            helper.bgImage(),
            Column(
              children: [
                Center(child: helper.topText()),
                const SizedBox(height: 200),
                Center(child: helper.text2()),
                const SizedBox(height: 70),
                helper.pic(),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: helper.q1(),
                    ),
                    const SizedBox(width: 30),
                    const Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                    Container(
                      height: 1,
                      width: 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    /*IconButton(
                        onPressed: () {
                          height = height - 1;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "$val",
                        style: TextStyle(color: Colors.green),
                      ),
                      IconButton(
                        onPressed: () {
                          height = height + 1;
                          setState(() {});
                          print('$val');
                        },
                        icon: const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),*/
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: helper.q2(),
                    ),
                    const SizedBox(width: 30),
                    const Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                    Container(
                      height: 1,
                      width: 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    /*IconButton(
                        onPressed: () {
                          height = height - 1;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "$val",
                        style: TextStyle(color: Colors.green),
                      ),
                      IconButton(
                        onPressed: () {
                          height = height + 1;
                          setState(() {});
                          print('$val');
                        },
                        icon: const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),*/
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: helper.q3(),
                    ),
                    const SizedBox(width: 70),
                    const Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                    Container(
                      height: 1,
                      width: 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    /*IconButton(
                        onPressed: () {
                          height = height - 1;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "$val",
                        style: TextStyle(color: Colors.green),
                      ),
                      IconButton(
                        onPressed: () {
                          height = height + 1;
                          setState(() {});
                          print('$val');
                        },
                        icon: const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),*/
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: helper.q4(),
                    ),
                    const SizedBox(width: 90),
                    const Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                    Container(
                      height: 1,
                      width: 50,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "..........",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    /*IconButton(
                        onPressed: () {
                          height = height - 1;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.navigate_before,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "$val",
                        style: TextStyle(color: Colors.green),
                      ),
                      IconButton(
                        onPressed: () {
                          height = height + 1;
                          setState(() {});
                          print('$val');
                        },
                        icon: const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),*/
                  ],
                ),
                const SizedBox(height: 60),
                helper.nexButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showProgressDialog(bool isShow) {
    if (mounted) {
      setState(() {
        this.isShow = isShow;
      });
    }
  }

  void updateState() {
    if (mounted) {
      setState(() {});
    }
  }
}

class Helper {
  BuildContext context;
  Size size;
  Function showProgressDialog, updateState;
  Helper(this.context, this.size, this.showProgressDialog, this.updateState);
  Widget bgImage() {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Image.asset(
        'Assets/bg.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget topText() {
    return const Text(
      "GYMBUD",
      style: TextStyle(
          fontSize: 32,
          letterSpacing: 2,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    );
  }

  Widget text2() {
    return const Text(
      "QUICK SIGNUP",
      style: TextStyle(
          color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
    );
  }

  Widget pic() {
    return SizedBox(
      height: 70,
      width: 70,
      child: Image.asset(
        'Assets/pict.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget q1() {
    return const Text(
      "First Name ?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget q2() {
    return const Text(
      "Last Name ?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget q3() {
    return const Text(
      "Email ?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget q4() {
    return const Text(
      "City ?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget nexButton() {
    return TextButton(
        onPressed: () {},
        child: const Text(
          "Next  >",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ));
  }
}
