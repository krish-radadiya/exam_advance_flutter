import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  final RxBool _isLoading = false.obs; // Use RxBool for reactivity

  bool get isLoading => _isLoading.value;

  void showLoading() {
    _isLoading.value = true;
    update();
  }

  void hideLoading() {
    _isLoading.value = false;
    update();
  }
}
