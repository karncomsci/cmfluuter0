

import 'package:flutter/material.dart';

class LonginPage extends StatefulWidget {
  const LonginPage({Key? key}) : super(key: key);

  @override
  State<LonginPage> createState() => _LonginPageState();
}

class _LonginPageState extends State<LonginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Container(
            padding: const EdgeInsets.all(32),
            height: 400,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 TextField(
                   controller: _usernameController,
                   decoration: InputDecoration(labelText: "username"),),
                 TextField(
                   controller: _passwordController,
                   decoration: InputDecoration(labelText: "password"),),
                 SizedBox(height: 32,),
                 ..._buildButton()

               ],
            ),
          ),
        ),
      ),
    );
  }
  void _handleClickLogin(){
    print("CmDev: Login (${_usernameController.text})");
  }

  void _handleClickReset() {
    _usernameController.text = "";
  }

  _buildButton() {
      return [
        ElevatedButton(
            onPressed: _handleClickLogin,
            child: Text("Login")),
        OutlinedButton(
            onPressed: _handleClickReset,
            child: Text("Reset"))
      ];
  }
}
