/**
 *  Interface Segregation
 * 
 * becous the Manager dont need to overrid th mathods WorkOnTask 
 * and the class Programmer dont need to overrid mothods AssignTask
 * and CreateSubTask so that T sprit them to diffrent interfaces 
 * 
 */
abstract class TeamLead {
  void AssignTask();
  void CreateSubTask();
}

abstract class TeamWorkOntask {
  void WorkOnTask();
}

class Manager implements TeamLead {
  void AssignTask() {}
  void CreateSubTask() {}
}

class Programmer implements TeamWorkOntask {
  void WorkOnTask() {}
}
