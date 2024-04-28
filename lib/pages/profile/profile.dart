import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String _selectedPayment = 'card';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 25,),

          Text(
            'Information',
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          const SizedBox(height: 15,),

          Card(
            elevation: 2,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/user.png'),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Test_User', style: Theme.of(context).textTheme.headlineSmall,),
                        const SizedBox(height: 5,),
                        Text('sd6942@srmist.edu.in', style: Theme.of(context).textTheme.bodySmall,),
                        const SizedBox(height: 5,),
                        Text('No 15 uti street off ovie palace road effurun delta state', style: Theme.of(context).textTheme.bodySmall,),
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 30,),

          Text(
            'Payment Method',
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          const SizedBox(height: 15,),

          Card(
            elevation: 2,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                children: [
                  _buildPaymentGateways(
                    image: 'assets/images/card.png',
                    name: 'Card',
                    context: context,
                    value: 'card',
                  ),
                  const Divider(),
                  _buildPaymentGateways(
                    image: 'assets/images/bank_account.png',
                    name: 'Bank Account',
                    context: context,
                    value: 'bank_account',
                  ),
                  const Divider(),
                  _buildPaymentGateways(
                    image: 'assets/images/paypal.png',
                    name: 'Paypal',
                    context: context,
                    value: 'paypal',
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }

  Widget _buildPaymentGateways({
    required String image,
    required String name,
    required BuildContext context,
    required String value,
  }) {
    return Row(
      children: [
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: value,
          groupValue: _selectedPayment,
          onChanged: (radVal) {
            setState(() {
              _selectedPayment = value;
            });
          },
        ),
        const SizedBox(width: 10,),
        Image.asset(image),
        const SizedBox(width: 10,),
        Text(name, style: Theme.of(context).textTheme.headlineSmall,),
      ],
    );
  }
}