import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Prefs extends GetxController {
  Future<void> initStorage() async {
    await GetStorage.init();
  }

  final token = ''.val('token');
  final UserId = 0.val('emp_id');
  final empCode = ''.val('emp_code');
  final roleName = ''.val('role_name');
  final isAdmin = false.val('is_admin');
  final userImage = ''.val('image');
  final empDesignationName = ''.val('designation');
  final empName = ''.val('emp_name');
  final empPosting = ''.val('emp_posting');
  final empMobile = ''.val('mobile');
  final empEmail = ''.val('emp_email');
  final empJoiningDate = ''.val('emp_joiningDate');
  final empJobNature = ''.val('emp_jobNature');
  final empJobStatus = ''.val('emp_jobStatus');


  final userName = ''.val('userName');
  final userNameLogin = ''.val('userNameLogin');
  final employeeId = ''.val('employeeId');


  final lastAttendanceId = 0.val('lastAttendanceId');
  final allowAttRange = 20.val('allowAttRange');
  final movementRange = 100.val('movementRange');

}