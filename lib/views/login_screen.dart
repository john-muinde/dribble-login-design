import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final Map<String, Color> colors = {
    'primary': const Color.fromARGB(255, 110, 0, 239),
    'secondary': const Color.fromARGB(255, 151, 0, 255),
    'secondary2': const Color.fromARGB(255, 168, 0, 255),
    'secondary3': const Color.fromARGB(255, 134, 0, 204)
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second App',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: colors['secondary2'],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Icon(Icons.shield_outlined,
                    size: 130, color: colors['secondary']),
                Icon(
                  Icons.lock_outline_sharp,
                  size: 40,
                  color: colors['secondary3'],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: const [
                Text(
                  'Welcome to Saifty!',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Keep your data safe!',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.black12),
                    child: textFieldWidget(
                        label: 'Username', controller: _usernameController),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.black12),
                    child: textFieldWidget(
                        label: 'Password',
                        controller: _passwordController,
                        password: true),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    margin: const EdgeInsets.only(top: 1),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 151, 0, 255),
                        ),
                        // 9700ff
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        textBaseline: TextBaseline.alphabetic,
                        color: colors['secondary'],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dont have an account? ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      textBaseline: TextBaseline.alphabetic,
                      fontFamily: 'Ubuntu'),
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    textBaseline: TextBaseline.alphabetic,
                    color: colors['secondary'],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextField textFieldWidget({label, controller, password = false, props}) {
    var suffixIcon = password
        ? IconButton(
            icon: const Icon(Icons.remove_red_eye_outlined),
            onPressed: () {},
          )
        : null;
    return TextField(
      controller: controller,
      obscureText: password,
      obscuringCharacter: '*',
      style: const TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      decoration: InputDecoration(
          label: Text(label),
          contentPadding: const EdgeInsets.all(10),
          border: InputBorder.none,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          suffixIcon: suffixIcon,
          labelStyle:
              const TextStyle(fontFamily: 'Ubuntu', color: Colors.grey)),
    );
  }
}
