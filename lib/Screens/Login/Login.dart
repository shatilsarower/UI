import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var image =
      'https://static4.depositphotos.com/1016929/320/i/950/depositphotos_3202522-stock-photo-blue-shopping-bag-isolated.jpg';
  var usernameControler = TextEditingController();
  var phoneNameControler = TextEditingController();
  var passwordControler = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          maxRadius: 50,
                          child: Icon(
                            Icons.add_shopping_cart,
                            size: 60,
                          ),
                        ),
                        Align(
                          child: Text(
                            "Join Active eCommerce",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),

                          ///TextField
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white60,
                            ),
                            child: TextFormField(
                              onChanged: (value) {
                                //_filterdata(value);
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: usernameControler,
                              enabled: true,
                              obscureText: false,
                              maxLines: 1,
                              maxLength: 40,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Name is required';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                //prefix: Icon(Icons.remove_red_eye),
                                hintText: 'Enter your Name',
                                //labelText: 'email ',
                                //helperText: 'Enter the email address',
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),

                          ///TextField
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white60,
                            ),
                            child: TextFormField(
                              onChanged: (value) {
                                //_filterdata(value);
                              },
                              keyboardType: TextInputType.emailAddress,
                              //controller: usernameControler,
                              enabled: true,
                              obscureText: false,
                              maxLines: 1,
                              maxLength: 40,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email is required';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                //prefix: Icon(Icons.remove_red_eye),
                                hintText: 'Enter your Email address',
                                //labelText: 'email ',
                                //helperText: 'Enter the email address',
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),

                          ///TextField
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white60,
                            ),
                            child: TextFormField(
                              onChanged: (value) {
                                //_filterdata(value);
                              },
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordControler,
                              enabled: true,
                              obscureText: true,
                              maxLines: 1,
                              maxLength: 40,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                //prefix: Icon(Icons.remove_red_eye),
                                hintText: 'Enter your Password',
                                //labelText: 'email ',
                                //helperText: 'Enter the email address',
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Retype password",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),

                          ///TextField
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white60,
                            ),
                            child: TextFormField(
                              onChanged: (value) {
                                //_filterdata(value);
                              },
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordControler,
                              enabled: true,
                              obscureText: true,
                              maxLines: 1,
                              maxLength: 40,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                //prefix: Icon(Icons.remove_red_eye),
                                hintText: 'Enter your Password Again',
                                //labelText: 'email ',
                                //helperText: 'Enter the email address',
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black87,
                        primary: Colors.red[400],
                        minimumSize: const Size(88, 36),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 150, vertical: 10),
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {}
                      },
                      child: const Text('SignUp'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Or Already Have an account"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black87,
                        primary: Colors.deepOrange,
                        minimumSize: const Size(88, 36),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 150, vertical: 10),
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {}
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
