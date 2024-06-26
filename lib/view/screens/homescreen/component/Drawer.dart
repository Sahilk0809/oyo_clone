import'package:flutter/material.dart';
import 'package:oyo_clone/view/screens/login/component/component.dart';
import 'package:oyo_clone/view/screens/profilescreen/profile_screen.dart';
import 'package:pinput/pinput.dart';

Drawer buildDrawer(double height, BuildContext context ) {
  return Drawer(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)
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
              Navigator.of(context).pushNamed('/profile');
            },
            leading: const Icon(Icons.person_2_outlined, size: 30, color: Colors.black38),
            title: const Text('Sahil Kashyap', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
            subtitle:  const Text(
              '+91- 8153826814',style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 10,),
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          const ListTile(
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
          const ListTile(
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
            leading: const Icon(Icons.account_balance_wallet_outlined, size: 25, color: Colors.black38),
            title: const Text('View wallets', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
            subtitle: const Text(
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
              Navigator.of(context).pushNamed('/save');
            },
            leading: const Icon(Icons.favorite_border_outlined, size: 25, color: Colors.black38),
            title: const Text('View saved OYOs', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          const ListTile(
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
            leading: const Icon(Icons.live_help_outlined, size: 25, color: Colors.black38),
            title: const Text('Need help', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          const ListTile(
            leading: Icon(Icons.language_outlined, size: 25, color: Colors.black38),
            title: Text('Change Language', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          const ListTile(
            leading: Icon(Icons.lock_outline, size: 25, color: Colors.black38),
            title: Text('View privacy policy', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15,top: 30,bottom: 10),
            child: Text('Onboard as a partner',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 23),),
          ),
          const ListTile(
            leading: Icon(Icons.person_2_outlined, size: 25, color: Colors.black38),
            title: Text('Travel agent partner', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),

          ),
          const ListTile(
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
          const Padding(
            padding: EdgeInsets.only(left: 15,top: 30,bottom: 10),
            child: Text('Are you a property Owner?',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          const ListTile(
            leading: Icon(Icons.house_outlined, size: 25, color: Colors.black38),
            title: Text('List your property', style: TextStyle(
                color: Colors.black,
                fontSize: 18
            )),
          ),
       ListTile(
        onTap:(){
          FireBaseServices().googleSignOut();
          Navigator.of(context).pushNamed('/login');
        },
        leading: Icon(Icons.logout_outlined, size: 25, color: Colors.black38),
        title: Text('Logout', style: TextStyle(
            color: Colors.black,
            fontSize: 18
        )),),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Version 10.7.2',
              style: TextStyle(color: Colors.black, fontSize: 13),),
          ),
        ],
      ),
    ),
  );
}