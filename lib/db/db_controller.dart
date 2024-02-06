import 'package:fusion/db/http_controller.dart';
import 'package:fusion/utils/const.dart';

class DBController {
  createWarehouse(user, warehousename, country) async {
    firebaseFirestore
        .collection('users')
        .doc(user)
        .collection("warehouses")
        .doc()
        .set({'warehouseName': warehousename, 'country': country.toString().toUpperCase()});
  }

  createItemInWarehouse(
      user,
      warehouseId,
      commodity,
      quantity,
      category,
      volume
      ) async {
    firebaseFirestore
        .collection('users')
        .doc(user)
        .collection("warehouses")
        .doc(warehouseId)
        .collection("items")
        .doc()
        .set({
      'Commodity': commodity,
      'Quantity': int.parse(quantity),
      'Category': category,
      'Volume': int.parse(volume),
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