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

