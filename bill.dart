class Bill {
  late double _doctorFees, _pharmacyChargesFees, _roomRentFees, _discount = 0.3;

  Bill(this._doctorFees, {double phr = 0, double room = 0}) {
    this._pharmacyChargesFees = phr;
    this._roomRentFees = room;
    print("bill add ");
  }

  double get doctorFees => this._doctorFees;
  set doctorFees(double value) => this._doctorFees = value;

  double get pharmacyChargesFees => this._pharmacyChargesFees;
  set pharmacyChargesFees(double value) => this._pharmacyChargesFees = value;

  double get roomRentFees => this._roomRentFees;
  set roomRentFees(double value) => this._roomRentFees = value;

  double get discount => this._discount;
  set discount(double value) => this._discount = value;

  double getBillTotalAmount() {
    return _doctorFees + _pharmacyChargesFees + _roomRentFees;
  }

  void display() {
    print("bill:\ndoctor fee : $_doctorFees");
    if (_pharmacyChargesFees > 0) {
      print("pharmacyChargesFees: $_pharmacyChargesFees");
      if (_roomRentFees > 0) {
        print("roomRentFees: $_roomRentFees");
        print("discount:$_discount");
      }
    }
  }
}
