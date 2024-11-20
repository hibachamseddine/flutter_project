import 'package:flutter/material.dart';
import 'package:my_flutter_project/presentation/widgets/cart/carttitle.widget.dart';
import 'package:my_flutter_project/presentation/widgets/cart/emptycart.widget.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class CartViewItem extends StatefulWidget {
  const CartViewItem({super.key});

  @override
  State<CartViewItem> createState() => _CartViewState();
}

class _CartViewState extends State<CartViewItem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: PersistentShoppingCart().showCartItems(
                cartTileWidget: ({required data}) =>
                    CartTitleWidget(data: data),
                showEmptyCartMsgWidget: const EmptyCartMsgWidget(),
              ),
            ),
            PersistentShoppingCart().showTotalAmountWidget(
              cartTotalAmountWidgetBuilder: (totalAmount) => Visibility(
                visible: totalAmount == 0.0 ? false : true,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total',
                          style: TextStyle(
                              color: Color.fromARGB(255, 113, 107, 107),
                              fontSize: 22),
                        ),
                        Text(
                          "$totalAmount TND",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 143, 133, 133),
                              fontSize: 22),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout'))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
