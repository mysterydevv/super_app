import 'package:flutter/material.dart';
import 'package:flutter_movie/main.dart';
import 'package:flutter_movie/models/user_account.dart';
import 'package:flutter_movie/services/account_service.dart';

class UserAccountHome extends StatefulWidget {
  const UserAccountHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UserAccountHomeState();
  }
}

class _UserAccountHomeState extends State<UserAccountHome> {
  late Future<UserAccount> userAccountFuture;
  final AccountService accountService = AccountService();
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    userAccountFuture = accountService.getAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          FutureBuilder<UserAccount>(
            future: userAccountFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                UserAccount userAccount = snapshot.data!;
                return Container(
                  padding: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100,
                        backgroundImage:
                            Image.asset('lib/images/user.png').image,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${userAccount.email}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _showPassword ? '${userAccount.password}' : '*' * userAccount.password!.length,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                );
              } else {
                return const Center(child: Text('No user account found.'));
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              await accountService.logout();
              // ignore: use_build_context_synchronously
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
