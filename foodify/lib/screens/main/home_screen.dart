import 'package:flutter/material.dart';
import 'package:foodify/services/api_services.dart';
import 'package:foodify/utils/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ✅ Fixed base URL (no /users at the end)
  final api = ApiServices(baseUrl: "http://localhost:3000/api");
  List<dynamic> users = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    setState(() => loading = true);
    try {
      final data = await api.get('/users');
      setState(() {
        users = data;
      });
      print('✅ Users fetched: $data');
    } catch (e) {
      print('❌ Error fetching users: $e');
    } finally {
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Foodify',
          style: TextStyle(
            fontSize: SizeConfig.text(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: loading
            ? const CircularProgressIndicator()
            : users.isEmpty
            ? const Text('No users found')
            : ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text(user['name'][0])),
                    title: Text(user['name']),
                    subtitle: Text('ID: ${user['id']}'),
                  );
                },
              ),
      ),
    );
  }
}

/*
⚠️ Important for Flutter Testing:

Use http://10.0.2.2:3000 for Android Emulator
Use http://localhost:3000 for Flutter Web
Use http://<your-local-ip>:3000 for physical device (e.g., 192.168.x.x)
*/
