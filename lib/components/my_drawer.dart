import 'package:ecommerce_app/components/list_tittle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .inversePrimary,
                  ),
                ),

                SizedBox(height: 25),

                MyListTittle(text: 'shop',
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context),),
                MyListTittle(text: 'Cart',
                    icon: Icons.shopping_cart,
                    onTap: () => Navigator.pushNamed(context, '/cart_page')),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: MyListTittle(text: 'Exit',
                icon: Icons.logout,
                onTap: () => SystemNavigator.pop(),),
            ),
          ],
        ),
      ),
    );
  }
}
