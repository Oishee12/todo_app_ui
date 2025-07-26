import 'package:get/get.dart';
import '../custom_widget/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;

  void addTask(Task task) {
    tasks.add(task);
  }
}
