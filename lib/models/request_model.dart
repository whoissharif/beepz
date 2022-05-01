import 'dart:convert';

RequestModel requestModelFromJson(String str) =>
    RequestModel.fromJson(json.decode(str));

String requestModelToJson(RequestModel data) => json.encode(data.toJson());

class RequestModel {
  RequestModel({
    this.orderId,
    this.customerId,
    this.customer,
    this.carId,
    this.car,
    this.categoryId,
    this.category,
    this.serviceId,
    this.service,
    this.companyWiseServiceId,
    this.companyWiseService,
    this.numberOfBids,
    this.bidId,
    this.bid,
    this.companyId,
    this.company,
    this.orderImages,
    this.carLatitude,
    this.carLongitude,
    this.readableOrderNo,
    this.qrCodeImage,
    this.bookingDate,
    this.bookingTime,
    this.details,
    this.orderTrackId,
    this.orderTrack,
    this.couponId,
    this.price,
    this.vat,
    this.serviceCharge,
    this.subTotal,
    this.discount,
    this.grandTotal,
    this.totalRecord,
    this.driverId,
    this.driver,
    this.orderPaypageUrl,
    this.orderReference,
    this.gatewayResponse,
    this.accidentClaimTrackId,
    this.accidentClaimTrack,
    this.address,
    this.emailMessage,
  });

  dynamic? orderId;
  dynamic? customerId;
  Customer? customer;
  dynamic? carId;
  Car? car;
  dynamic? categoryId;
  Category? category;
  dynamic? serviceId;
  dynamic service;
  dynamic? companyWiseServiceId;
  dynamic? companyWiseService;
  dynamic? numberOfBids;
  dynamic? bidId;
  dynamic? bid;
  dynamic? companyId;
  dynamic? company;
  List<String>? orderImages;
  String? carLatitude;
  String? carLongitude;
  String? readableOrderNo;
  String? qrCodeImage;
  String? bookingDate;
  String? bookingTime;
  String? details;
  dynamic? orderTrackId;
  dynamic? orderTrack;
  dynamic? couponId;
  dynamic? price;
  dynamic? vat;
  dynamic? serviceCharge;
  dynamic? subTotal;
  dynamic? discount;
  dynamic? grandTotal;
  dynamic? totalRecord;
  dynamic? driverId;
  dynamic? driver;
  dynamic? orderPaypageUrl;
  dynamic? orderReference;
  dynamic? gatewayResponse;
  dynamic? accidentClaimTrackId;
  AccidentClaimTrack? accidentClaimTrack;
  String? address;
  dynamic? emailMessage;

  factory RequestModel.fromJson(Map<String?, dynamic?> json) => RequestModel(
        orderId: json["orderId"],
        customerId: json["customerId"],
        customer: Customer.fromJson(json["customer"]),
        carId: json["carId"],
        car: Car.fromJson(json["car"]),
        categoryId: json["categoryId"],
        category: Category.fromJson(json["category"]),
        serviceId: json["serviceId"],
        service: json["service"],
        companyWiseServiceId: json["companyWiseServiceId"],
        companyWiseService: json["companyWiseService"],
        numberOfBids: json["numberOfBids"],
        bidId: json["bidId"],
        bid: json["bid"],
        companyId: json["companyId"],
        company: json["company"],
        orderImages: List<String>.from(json["orderImages"].map((x) => x)),
        carLatitude: json["carLatitude"],
        carLongitude: json["carLongitude"],
        readableOrderNo: json["readableOrderNo"],
        qrCodeImage: json["qrCodeImage"],
        bookingDate: json["bookingDate"],
        bookingTime: json["bookingTime"],
        details: json["details"],
        orderTrackId: json["orderTrackId"],
        orderTrack: json["orderTrack"],
        couponId: json["couponId"],
        price: json["price"],
        vat: json["vat"],
        serviceCharge: json["serviceCharge"],
        subTotal: json["subTotal"],
        discount: json["discount"],
        grandTotal: json["grandTotal"],
        totalRecord: json["totalRecord"],
        driverId: json["driverId"],
        driver: json["driver"],
        orderPaypageUrl: json["orderPaypageUrl"],
        orderReference: json["orderReference"],
        gatewayResponse: json["gatewayResponse"],
        accidentClaimTrackId: json["accidentClaimTrackId"],
        accidentClaimTrack:
            AccidentClaimTrack.fromJson(json["accidentClaimTrack"]),
        address: json["address"],
        emailMessage: json["emailMessage"],
      );

  Map<String?, dynamic?> toJson() => {
        "orderId": orderId,
        "customerId": customerId,
        "customer": customer!.toJson(),
        "carId": carId,
        "car": car!.toJson(),
        "categoryId": categoryId,
        "category": category!.toJson(),
        "serviceId": serviceId,
        "service": service,
        "companyWiseServiceId": companyWiseServiceId,
        "companyWiseService": companyWiseService,
        "numberOfBids": numberOfBids,
        "bidId": bidId,
        "bid": bid,
        "companyId": companyId,
        "company": company,
        "orderImages": List<dynamic?>.from(orderImages!.map((x) => x)),
        "carLatitude": carLatitude,
        "carLongitude": carLongitude,
        "readableOrderNo": readableOrderNo,
        "qrCodeImage": qrCodeImage,
        "bookingDate": bookingDate,
        "bookingTime": bookingTime,
        "details": details,
        "orderTrackId": orderTrackId,
        "orderTrack": orderTrack,
        "couponId": couponId,
        "price": price,
        "vat": vat,
        "serviceCharge": serviceCharge,
        "subTotal": subTotal,
        "discount": discount,
        "grandTotal": grandTotal,
        "totalRecord": totalRecord,
        "driverId": driverId,
        "driver": driver,
        "orderPaypageUrl": orderPaypageUrl,
        "orderReference": orderReference,
        "gatewayResponse": gatewayResponse,
        "accidentClaimTrackId": accidentClaimTrackId,
        "accidentClaimTrack": accidentClaimTrack!.toJson(),
        "address": address,
        "emailMessage": emailMessage,
      };
}

class AccidentClaimTrack {
  AccidentClaimTrack({
    this.accidentClaimTrackId,
    this.name,
    this.details,
    this.level,
    this.image,
  });

  dynamic? accidentClaimTrackId;
  String? name;
  String? details;
  dynamic? level;
  String? image;

  factory AccidentClaimTrack.fromJson(Map<String?, dynamic?> json) =>
      AccidentClaimTrack(
        accidentClaimTrackId: json["accidentClaimTrackId"],
        name: json["name"],
        details: json["details"],
        level: json["level"],
        image: json["image"],
      );

  Map<String?, dynamic> toJson() => {
        "accidentClaimTrackId": accidentClaimTrackId,
        "name": name,
        "details": details,
        "level": level,
        "image": image,
      };
}

class Car {
  Car({
    this.carId,
    this.vehicleBrandId,
    this.vehicleBrand,
    this.vehicleModelId,
    this.vehicleModel,
    this.year,
    this.vehicleNickName,
    this.customerId,
    this.customer,
    this.emirateId,
    this.emirates,
    this.plateNumber,
    this.insuranceType,
    this.insuranceNumber,
    this.assistanceNo,
    this.insuranceExpireDate,
    this.image,
    this.vehicleYearId,
    this.vehicleYear,
  });

  dynamic? carId;
  dynamic? vehicleBrandId;
  VehicleBrand? vehicleBrand;
  dynamic? vehicleModelId;
  VehicleModel? vehicleModel;
  String? year;
  String? vehicleNickName;
  dynamic? customerId;
  Customer? customer;
  dynamic? emirateId;
  Emirate? emirates;
  String? plateNumber;
  String? insuranceType;
  String? insuranceNumber;
  String? assistanceNo;
  String? insuranceExpireDate;
  List<Image>? image;
  dynamic? vehicleYearId;
  VehicleYear? vehicleYear;

  factory Car.fromJson(Map<String?, dynamic?> json) => Car(
        carId: json["carId"],
        vehicleBrandId: json["vehicleBrandId"],
        vehicleBrand: VehicleBrand.fromJson(json["vehicleBrand"]),
        vehicleModelId: json["vehicleModelId"],
        vehicleModel: VehicleModel.fromJson(json["vehicleModel"]),
        year: json["year"],
        vehicleNickName: json["vehicleNickName"],
        customerId: json["customerId"],
        customer: Customer.fromJson(json["customer"]),
        emirateId: json["emirateId"],
        emirates: Emirate.fromJson(json["emirates"]),
        plateNumber: json["plateNumber"],
        insuranceType: json["insuranceType"],
        insuranceNumber: json["insuranceNumber"],
        assistanceNo: json["assistanceNo"],
        insuranceExpireDate: json["insuranceExpireDate"],
        image: List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
        vehicleYearId: json["vehicleYearId"],
        vehicleYear: VehicleYear.fromJson(json["vehicleYear"]),
      );

  Map<String?, dynamic?> toJson() => {
        "carId": carId,
        "vehicleBrandId": vehicleBrandId,
        "vehicleBrand": vehicleBrand!.toJson(),
        "vehicleModelId": vehicleModelId,
        "vehicleModel": vehicleModel!.toJson(),
        "year": year,
        "vehicleNickName": vehicleNickName,
        "customerId": customerId,
        "customer": customer!.toJson(),
        "emirateId": emirateId,
        "emirates": emirates!.toJson(),
        "plateNumber": plateNumber,
        "insuranceType": insuranceType,
        "insuranceNumber": insuranceNumber,
        "assistanceNo": assistanceNo,
        "insuranceExpireDate": insuranceExpireDate,
        "image": List<dynamic>.from(image!.map((x) => x.toJson())),
        "vehicleYearId": vehicleYearId,
        "vehicleYear": vehicleYear!.toJson(),
      };
}

class Customer {
  Customer({
    this.customerId,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.address,
    this.emirateId,
    this.emirate,
    this.isEmailNotificationEnable,
    this.createdAt,
    this.status,
    this.completedOrderCount,
  });

  dynamic? customerId;
  String? fullName;
  String? email;
  String? phoneNumber;
  String? address;
  dynamic? emirateId;
  Emirate? emirate;
  bool? isEmailNotificationEnable;
  DateTime? createdAt;
  bool? status;
  dynamic? completedOrderCount;

  factory Customer.fromJson(Map<String?, dynamic?> json) => Customer(
        customerId: json["customerId"],
        fullName: json["fullName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        address: json["address"],
        emirateId: json["emirateId"],
        emirate: Emirate.fromJson(json["emirate"]),
        isEmailNotificationEnable: json["isEmailNotificationEnable"],
        createdAt: DateTime.parse(json["createdAt"]),
        status: json["status"],
        completedOrderCount: json["completedOrderCount"],
      );

  Map<String?, dynamic?> toJson() => {
        "customerId": customerId,
        "fullName": fullName,
        "email": email,
        "phoneNumber": phoneNumber,
        "address": address,
        "emirateId": emirateId,
        "emirate": emirate!.toJson(),
        "isEmailNotificationEnable": isEmailNotificationEnable,
        "createdAt": createdAt!.toIso8601String,
        "status": status,
        "completedOrderCount": completedOrderCount,
      };
}

class Emirate {
  Emirate({
    this.emirateId,
    this.emirateName,
    this.countryId,
    this.country,
    this.status,
  });

  dynamic? emirateId;
  String? emirateName;
  dynamic? countryId;
  Country? country;
  bool? status;

  factory Emirate.fromJson(Map<String?, dynamic?> json) => Emirate(
        emirateId: json["emirateId"],
        emirateName: json["emirateName"],
        countryId: json["countryId"],
        country: Country.fromJson(json["country"]),
        status: json["status"],
      );

  Map<String?, dynamic?> toJson() => {
        "emirateId": emirateId,
        "emirateName": emirateName,
        "countryId": countryId,
        "country": country!.toJson(),
        "status": status,
      };
}

class Country {
  Country({
    this.countryId,
    this.name,
    this.iso,
    this.flag,
    this.callingCode,
    this.nationality,
    this.status,
  });

  dynamic? countryId;
  String? name;
  String? iso;
  String? flag;
  String? callingCode;
  String? nationality;
  bool? status;

  factory Country.fromJson(Map<String?, dynamic?> json) => Country(
        countryId: json["countryId"],
        name: json["name"],
        iso: json["iso"],
        flag: json["flag"],
        callingCode: json["callingCode"],
        nationality: json["nationality"],
        status: json["status"],
      );

  Map<String?, dynamic?> toJson() => {
        "countryId": countryId,
        "name": name,
        "iso": iso,
        "flag": flag,
        "callingCode": callingCode,
        "nationality": nationality,
        "status": status,
      };
}

class Image {
  Image({
    this.carImageId,
    this.carId,
    this.carImages,
  });

  dynamic? carImageId;
  dynamic? carId;
  String? carImages;

  factory Image.fromJson(Map<String?, dynamic?> json) => Image(
        carImageId: json["carImageId"],
        carId: json["carId"],
        carImages: json["carImages"],
      );

  Map<String?, dynamic?> toJson() => {
        "carImageId": carImageId,
        "carId": carId,
        "carImages": carImages,
      };
}

class VehicleBrand {
  VehicleBrand({
    this.vehicleBrandId,
    this.brandName,
    this.icon,
    this.details,
    this.status,
  });

  dynamic? vehicleBrandId;
  String? brandName;
  String? icon;
  String? details;
  bool? status;

  factory VehicleBrand.fromJson(Map<String?, dynamic?> json) => VehicleBrand(
        vehicleBrandId: json["vehicleBrandId"],
        brandName: json["brandName"],
        icon: json["icon"],
        details: json["details"] == null ? null : json["details"],
        status: json["status"],
      );

  Map<String?, dynamic?> toJson() => {
        "vehicleBrandId": vehicleBrandId,
        "brandName": brandName,
        "icon": icon,
        "details": details == null ? null : details,
        "status": status,
      };
}

class VehicleModel {
  VehicleModel({
    this.vehicleModelId,
    this.modelName,
    this.icon,
    this.details,
    this.status,
    this.vehicleBrandId,
    this.vehicleBrand,
  });

  dynamic? vehicleModelId;
  String? modelName;
  String? icon;
  String? details;
  bool? status;
  dynamic? vehicleBrandId;
  VehicleBrand? vehicleBrand;

  factory VehicleModel.fromJson(Map<String?, dynamic?> json) => VehicleModel(
        vehicleModelId: json["vehicleModelId"],
        modelName: json["modelName"],
        icon: json["icon"],
        details: json["details"],
        status: json["status"],
        vehicleBrandId: json["vehicleBrandId"],
        vehicleBrand: VehicleBrand.fromJson(json["vehicleBrand"]),
      );

  Map<String?, dynamic?> toJson() => {
        "vehicleModelId": vehicleModelId,
        "modelName": modelName,
        "icon": icon,
        "details": details,
        "status": status,
        "vehicleBrandId": vehicleBrandId,
        "vehicleBrand": vehicleBrand!.toJson(),
      };
}

class VehicleYear {
  VehicleYear({
    this.vehicleYearId,
    this.details,
    this.vehicleModelId,
    this.vehicleModel,
    this.status,
    this.numberOfCylinder,
    this.make,
    this.shape,
  });

  dynamic? vehicleYearId;
  String? details;
  dynamic? vehicleModelId;
  VehicleModel? vehicleModel;
  bool? status;
  String? numberOfCylinder;
  String? make;
  String? shape;

  factory VehicleYear.fromJson(Map<String?, dynamic?> json) => VehicleYear(
        vehicleYearId: json["vehicleYearId"],
        details: json["details"],
        vehicleModelId: json["vehicleModelId"],
        vehicleModel: VehicleModel.fromJson(json["vehicleModel"]),
        status: json["status"],
        numberOfCylinder: json["numberOfCylinder"],
        make: json["make"],
        shape: json["shape"],
      );

  Map<String?, dynamic?> toJson() => {
        "vehicleYearId": vehicleYearId,
        "details": details,
        "vehicleModelId": vehicleModelId,
        "vehicleModel": vehicleModel!.toJson(),
        "status": status,
        "numberOfCylinder": numberOfCylinder,
        "make": make,
        "shape": shape,
      };
}

class Category {
  Category({
    this.categoryId,
    this.categoryName,
    this.icon,
    this.details,
  });

  dynamic? categoryId;
  String? categoryName;
  String? icon;
  String? details;

  factory Category.fromJson(Map<String?, dynamic?> json) => Category(
        categoryId: json["categoryId"],
        categoryName: json["categoryName"],
        icon: json["icon"],
        details: json["details"],
      );

  Map<String?, dynamic?> toJson() => {
        "categoryId": categoryId,
        "categoryName": categoryName,
        "icon": icon,
        "details": details,
      };
}
