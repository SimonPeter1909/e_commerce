import 'package:e_commerce/api/http_request.dart';
import 'package:e_commerce/models/dashboard_model.dart';

class Repository{

  Future<DashboardModel> getDashboard() async {
    return dashboardModelFromJson(await Request().httpPost(body: {'type' : 'dashboard'}));
  }

}