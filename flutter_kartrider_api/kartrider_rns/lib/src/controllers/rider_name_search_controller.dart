import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kartrider_rns/src/models/rider_statistics_model.dart';
import 'package:kartrider_rns/src/repository/rider_name_search_repository.dart';

class RiderNameSearchController extends GetxController {
  late RiderNameSearchRepository _riderNameSearchRepository;
  Rx<RiderStatisticsModel> riderStatistics = RiderStatisticsModel().obs;
  @override
  void onInit() {
    super.onInit();
    _riderNameSearchRepository = RiderNameSearchRepository();
    fetchRiderNameState();
  }

  void fetchRiderNameState() async {
    var result =
        await _riderNameSearchRepository.fetchRiderNameSearchStatistics();
    if (result != null) {}
  }
}
