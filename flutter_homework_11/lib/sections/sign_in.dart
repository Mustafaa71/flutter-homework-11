import 'package:flutter/material.dart';

class ProfileSignIn extends StatelessWidget {
  const ProfileSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: ((context) {
              return Container(
                padding: const EdgeInsets.all(20.0),
                height: 400.0,
                child: Center(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 50.0,
                      ),
                      const Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.call,
                              size: 40.0,
                              color: Colors.green,
                            ),
                            Text(
                              'Text Message',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.mail,
                                size: 40.0,
                                color: Colors.green,
                              ),
                              Text(
                                'Email Message',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ))
                    ],
                  ),
                ),
              );
            }));
      },
      child: const Icon(Icons.person, size: 30.0),
    );
  }
}
