class DBmanger {
  static late DBmanger _db ;
  DBmanger._DBmanger();
  static DBmanger create ()
  {
    if(_db==null)
    _db = DBmanger._DBmanger();
    
    return _db;

  }
}