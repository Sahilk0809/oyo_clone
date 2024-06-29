import'package:flutter/material.dart';

Drawer buildDrawer(double height, BuildContext context ) {
  return Drawer(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)
        )
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height*0.07,
          ),
          ListTile(
            onTap: (){
              //Navigator.of(context).pushNamed('/profile'),
            },
            leading: Icon(Icons.person_2_outlined, size: 30, color: Colors.black38),
            title: Text('Durga Mewada', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
            subtitle: Text(
              '+91-9313381084',style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 10,),
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          ListTile(
            leading: Icon(Icons.wb_auto_outlined, size: 25, color: Colors.black38),
            title: Text('Become an OYO Wizard', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
            subtitle: Text(
              'Enjoy up to 10% on your bookings',style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_outlined, size: 25, color: Colors.black38),
            title: Text('Invite & Earn', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
            subtitle: Text(
              'Refer OYO app and earn OYO \nRupee',style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushNamed('/wallet');
            },
            leading: Icon(Icons.account_balance_wallet_outlined, size: 25, color: Colors.black38),
            title: Text('View wallets', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
            subtitle: Text(
              'Link wallets & check your balance',style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30,left: 30),
            child: Divider(
              color: Colors.grey.shade100,
            ),
          ),
          ListTile(
            onTap: (){
              //Navigator.of(context).pushNamed('/'),
            },
            leading: Icon(Icons.favorite_border_outlined, size: 25, color: Colors.black38),
            title: Text('View saved OYOs', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          ListTile(
            leading: Icon(Icons.filter_hdr_outlined, size: 25, color: Colors.black38),
            title: Text('Long Stays in Manali', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushNamed('/help');
            },
            leading: Icon(Icons.live_help_outlined, size: 25, color: Colors.black38),
            title: Text('Need help', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          ListTile(
            leading: Icon(Icons.language_outlined, size: 25, color: Colors.black38),
            title: Text('Change Language', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          ListTile(
            leading: Icon(Icons.lock_outline, size: 25, color: Colors.black38),
            title: Text('View privacy policy', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 30,bottom: 10),
            child: Text('Onboard as a partner',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 23),),
          ),
          ListTile(
            leading: Icon(Icons.person_2_outlined, size: 25, color: Colors.black38),
            title: Text('Travel agent partner', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined, size: 25, color: Colors.black38),
            title: Text('OYO for Business', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
            subtitle: Text(
              'Trusted by 5000 Corporates',style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 30,bottom: 10),
            child: Text('Are you a property Owner?',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          ListTile(
            leading: Icon(Icons.house_outlined, size: 25, color: Colors.black38),
            title: Text('List your property', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Version 10.7.2',
              style: TextStyle(color: Colors.black, fontSize: 13),),
          ),
        ],
      ),
    ),
  );
}