import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6ECE6),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            Center(
              child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'asset/Logo Black 1.png',
                    fit: BoxFit.contain,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Login into your account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Email Address'),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F3F6),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.email_outlined),
                          SizedBox(width: 5,),
                          Text('example@gmail.com')
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('Password'),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF1F3F6),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.lock_open),
                          SizedBox(width: 5,),
                          Text('Enter Your Password')
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            const Text('Remember me?'),
                          ],
                        ),
                        const Text('Forgot Password?',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),)
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Button('Login Now'),
                    const SizedBox(height: 30,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width:150,
                            child: Divider(thickness: 2,color: Colors.black,)),
                        Text('OR'),
                        SizedBox(
                            width:150,
                            child: Divider(thickness: 2,color: Colors.black,)),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Button('SignUp Now'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Button (String title){
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color:  const Color(0xff1E1E1E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(title,style: const TextStyle(color: Colors.white),)),
    );
  }
}
