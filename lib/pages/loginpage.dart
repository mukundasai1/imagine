import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  void _toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    var b = isDarkMode ? Colors.black : Colors.white;
    var a = !isDarkMode ? Colors.black : Colors.white;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 130,
            ),
            const Text(
              "Imagine!",
              style: TextStyle(
                fontFamily: "KaushanScript",
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: a,
                      ),
                    ),
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: a,
                    )),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: TextField(
                showCursor: true,
                obscureText: obscureText,
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: a,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock_outline_sharp,
                    color: a,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscureText
                          ? Icons.visibility_sharp
                          : Icons.visibility_off_sharp,
                      color: a,
                    ),
                    onPressed: _toggle,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              color: a,
              height: 50,
              width: 200,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    color: b,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not a user?",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
