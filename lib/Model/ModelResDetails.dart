import 'package:owner/BLoC/CommonBlocClass/BaseMode.dart';

class ResRestaurantDetails extends BaseModel {
  int code;
  String message;
  RestaurantDetails restaurantDetails;

  ResRestaurantDetails({this.code, this.message, this.restaurantDetails});

  ResRestaurantDetails.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    restaurantDetails = json['result'] != null
        ? new RestaurantDetails.fromJson(json['result'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.restaurantDetails != null) {
      data['result'] = this.restaurantDetails.toJson();
    }
    return data;
  }
}

class RestaurantDetails {
  String restaurantId;
  String name;
  String email;
  String bannerImage;
  String phone;
  String address;
  String openingTime;
  String closingTime;
  String latitude;
  String longitude;
  String averagePrice;
  String discount;
  String discountType;
  String isAvailable;
  String review;
  List<Categories> categories;

  RestaurantDetails(
      {this.restaurantId,
      this.name,
      this.email,
      this.bannerImage,
      this.phone,
      this.address,
      this.openingTime,
      this.closingTime,
      this.latitude,
      this.longitude,
      this.averagePrice,
      this.discount,
      this.discountType,
      this.isAvailable,
      this.review,
      this.categories});

  RestaurantDetails.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurant_id'];
    name = json['name'];
    email = json['email'];
    bannerImage = json['banner_image'];
    phone = json['phone'];
    address = json['address'];
    openingTime = json['opening_time'];
    closingTime = json['closing_time'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    averagePrice = json['average_price'];
    discount = json['discount'];
    discountType = json['discount_type'];
    isAvailable = json['is_available'];
    review = json['avg_review'];
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurant_id'] = this.restaurantId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['banner_image'] = this.bannerImage;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['opening_time'] = this.openingTime;
    data['closing_time'] = this.closingTime;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['average_price'] = this.averagePrice;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['is_available'] = this.isAvailable;
    data['avg_review'] = this.review;
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String categoryName;
  String categoryId;
  List<Subcategories> subcategories;

  Categories({this.categoryName, this.categoryId, this.subcategories});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryName = json['category_name'];
    categoryId = json['category_id'];
    if (json['subcategories'] != null) {
      subcategories = [];
      json['subcategories'].forEach((v) {
        subcategories.add(new Subcategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_name'] = this.categoryName;
    data['category_id'] = this.categoryId;
    if (this.subcategories != null) {
      data['subcategories'] =
          this.subcategories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Subcategories {
  String id;
  String isAvailable;
  String name;
  String image;
  String price;
  String discount;
  String discountType;
  String type;
  String status;
  String description;
  String categoryName = "";
  String categoryId = "";

  Subcategories(
      {this.id,
      this.isAvailable,
      this.name,
      this.image,
      this.price,
      this.discount,
      this.discountType,
      this.type,
      this.status,
      this.categoryName,
      this.categoryId,
      this.description});

  Subcategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isAvailable = json['is_available'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    status = json['status'];
    discount = json['discount'];
    discountType = json['discount_type'];
    type = json['type'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_available'] = this.isAvailable;
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['type'] = this.type;
    data['status'] = this.status;
    data['description'] = this.description;
    return data;
  }
}
