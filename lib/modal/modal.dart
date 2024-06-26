class DetailModel {
  String? location, name, address,city;
  int? amount, rent, per, tax;
  double? rating;
  List<DetailModel> hotelList1 = [];

  DetailModel(
      {this.rent,
        this.name,
        this.tax,
        this.amount,
        this.location,
        this.per,
        this.rating,
        this.address,this.city});

  factory DetailModel.fromDetailModel(Map m1) {
    return DetailModel(
      rent: m1['rent'],
      name: m1['name'],
      address: m1['address'],
      amount: m1['amount'],
      location: m1['location'],
      per: m1['par'],
      rating: m1['ret'],
      tax: m1['tax'],
      city: m1['city'],
    );
  }

  DetailModel.toList(List l1) {
    for (int i = 0; i < l1.length; i++) {
      hotelList1.add(DetailModel.fromDetailModel(l1[i]));
    }
  }
}


class DetailModel2 {
  String? location, name, address,city;
  int? amount, rent, per, tax;
  double? rating;
  List<DetailModel2> hotelList3 = [];

  DetailModel2(
      {this.rent,
        this.name,
        this.tax,
        this.amount,
        this.location,
        this.per,
        this.rating,
        this.address,this.city});

  factory DetailModel2.fromDetailModel2(Map m2) {
    return DetailModel2(
      rent: m2['rent'],
      name: m2['name'],
      address: m2['address'],
      amount: m2['amount'],
      location: m2['location'],
      per: m2['par'],
      rating: m2['ret'],
      tax: m2['tax'],
      city: m2['city'],
    );
  }

  DetailModel2.toList(List l2) {
    for (int i = 0; i < l2.length; i++) {
      hotelList3.add(DetailModel2.fromDetailModel2(l2[i]));
    }
  }
}