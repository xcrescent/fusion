import 'package:fusion/db/http_controller.dart';
import 'package:fusion/utils/const.dart';

class DBController {
  createWarehouse(user, warehousename, country) async {
    firebaseFirestore
        .collection('users')
        .doc(user)
        .collection("warehouses")
        .doc()
        .set({'warehousename': warehousename, 'country': country});
  }

  createItemInWarehouse(
    user,
    warehouseId,
  ) async {
    firebaseFirestore
        .collection('users')
        .doc(user)
        .collection("warehouses")
        .doc(warehouseId)
        .collection("items")
        .doc()
        .set({
      'Commodity': 'Poultry cuts & offal, except livers, fresh or chilled',
      'Quantity': 34,
      'Category': "02_meat_and_edible_meat_offal",
      'Volume': 12,
    });
  }

  shipItemFromTo(user,from, to, quantity, volume) async {
    var distance = await HttpController().calculateDistance(from, to);
    await firebaseFirestore
        .collection('orders')
        .doc()
        .collection("users")
        .doc(user)
        .set({
      'from': from,
      'to': to,
      'quantity': quantity,
      'volume': volume,
      'distance': distance,
      
    });
  }
}
