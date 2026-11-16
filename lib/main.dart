import 'package:flutter/material.dart';

void main() {
  runApp(const OstoraAccountingApp());
}

class OstoraAccountingApp extends StatelessWidget {
  const OstoraAccountingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'أسطورة المحاسبة',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const AccountingHomePage(),
    );
  }
}

class AccountingHomePage extends StatelessWidget {
  const AccountingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أسطورة المحاسبة'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'إجمالي الحسابات',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '0.00 ر.ي',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.account_balance_wallet, color: Colors.green),
                    title: Text('الصندوق الرئيسي'),
                    subtitle: Text('الحركة المالية اليومية'),
                    trailing: Text('0.00'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.people, color: Colors.orange),
                    title: Text('العملاء والديون'),
                    subtitle: Text('حسابات العملاء'),
                    trailing: Text('0.00'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // إضافة قيد أو حركة جديدة
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
