// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void _handleDummyOnPressed() {
    _usernameTextController.clear();
    _passwordTextController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            TextField(
                controller: _usernameTextController,
                decoration: const InputDecoration(
                    hintText: "Username",
                    filled: true,
                    label: Text("Enter your email or username"))),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordTextController,
              decoration: const InputDecoration(
                  hintText: "Make sure no one knows it!",
                  filled: true,
                  label: Text("Password")),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      _handleDummyOnPressed();
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(fontSize: 18.0),
                    )),
                ElevatedButton(
                    onPressed: () {
                      _handleDummyOnPressed();
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Let Me In',
                      style: TextStyle(fontSize: 22.0),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)