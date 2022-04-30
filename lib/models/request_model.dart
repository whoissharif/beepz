// // To parse this JSON data, do
// //
// //     final requestModel = requestModelFromJson(jsonString);

// import 'dart:convert';

// RequestModel requestModelFromJson(String str) =>
//     RequestModel.fromJson(json.decode(str));

// String requestModelToJson(RequestModel data) => json.encode(data.toJson());

// class RequestModel {
//   RequestModel({
//     required this.data,
//     required this.code,
//     required this.message,
//     required this.isSuccess,
//   });

//   Data data;
//   int code;
//   String message;
//   bool isSuccess;

//   factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
//         data: Data.fromJson(json["data"]),
//         code: json["code"],
//         message: json["message"],
//         isSuccess: json["isSuccess"],
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data.toJson(),
//         "code": code,
//         "message": message,
//         "isSuccess": isSuccess,
//       };
// }

// class Data {
//   Data({
//     required this.data,
//   });

//   List<Datum> data;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }

// class Datum {
//   Datum({
//     required this.orderId,
//     required this.customerId,
//     required this.customer,
//     required this.carId,
//     required this.car,
//     required this.categoryId,
//     required this.category,
//     required this.serviceId,
//     required this.service,
//     required this.companyWiseServiceId,
//     required this.companyWiseService,
//     required this.numberOfBids,
//     required this.bidId,
//     required this.bid,
//     required this.companyId,
//     required this.company,
//     required this.orderImages,
//     required this.carLatitude,
//     required this.carLongitude,
//     required this.readableOrderNo,
//     required this.qrCodeImage,
//     required this.bookingDate,
//     required this.bookingTime,
//     required this.details,
//     required this.orderTrackId,
//     required this.orderTrack,
//     required this.couponId,
//     required this.price,
//     required this.vat,
//     required this.serviceCharge,
//     required this.subTotal,
//     required this.discount,
//     required this.grandTotal,
//     required this.totalRecord,
//     required this.driverId,
//     required this.driver,
//     required this.orderPaypageUrl,
//     required this.orderReference,
//     required this.gatewayResponse,
//     required this.accidentClaimTrackId,
//     required this.accidentClaimTrack,
//     required this.address,
//     required this.emailMessage,
//   });

//   int orderId;
//   int customerId;
//   Customer customer;
//   int carId;
//   Car car;
//   int categoryId;
//   Category category;
//   int serviceId;
//   dynamic service;
//   int companyWiseServiceId;
//   dynamic companyWiseService;
//   int numberOfBids;
//   int bidId;
//   dynamic bid;
//   int companyId;
//   dynamic company;
//   List<String> orderImages;
//   String carLatitude;
//   String carLongitude;
//   String readableOrderNo;
//   String qrCodeImage;
//   String bookingDate;
//   String bookingTime;
//   String details;
//   int orderTrackId;
//   dynamic orderTrack;
//   int couponId;
//   int price;
//   int vat;
//   int serviceCharge;
//   int subTotal;
//   int discount;
//   int grandTotal;
//   int totalRecord;
//   int driverId;
//   dynamic driver;
//   dynamic orderPaypageUrl;
//   dynamic orderReference;
//   dynamic gatewayResponse;
//   int accidentClaimTrackId;
//   AccidentClaimTrack accidentClaimTrack;
//   String address;
//   dynamic emailMessage;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         orderId: json["orderId"],
//         customerId: json["customerId"],
//         customer: Customer.fromJson(json["customer"]),
//         carId: json["carId"],
//         car: Car.fromJson(json["car"]),
//         categoryId: json["categoryId"],
//         category: Category.fromJson(json["category"]),
//         serviceId: json["serviceId"],
//         service: json["service"],
//         companyWiseServiceId: json["companyWiseServiceId"],
//         companyWiseService: json["companyWiseService"],
//         numberOfBids: json["numberOfBids"],
//         bidId: json["bidId"],
//         bid: json["bid"],
//         companyId: json["companyId"],
//         company: json["company"],
//         orderImages: List<String>.from(json["orderImages"].map((x) => x)),
//         carLatitude: json["carLatitude"],
//         carLongitude: json["carLongitude"],
//         readableOrderNo: json["readableOrderNo"],
//         qrCodeImage: json["qrCodeImage"],
//         bookingDate: json["bookingDate"],
//         bookingTime: json["bookingTime"],
//         details: json["details"],
//         orderTrackId: json["orderTrackId"],
//         orderTrack: json["orderTrack"],
//         couponId: json["couponId"],
//         price: json["price"],
//         vat: json["vat"],
//         serviceCharge: json["serviceCharge"],
//         subTotal: json["subTotal"],
//         discount: json["discount"],
//         grandTotal: json["grandTotal"],
//         totalRecord: json["totalRecord"],
//         driverId: json["driverId"],
//         driver: json["driver"],
//         orderPaypageUrl: json["orderPaypageUrl"],
//         orderReference: json["orderReference"],
//         gatewayResponse: json["gatewayResponse"],
//         accidentClaimTrackId: json["accidentClaimTrackId"],
//         accidentClaimTrack:
//             AccidentClaimTrack.fromJson(json["accidentClaimTrack"]),
//         address: json["address"],
//         emailMessage: json["emailMessage"],
//       );

//   Map<String, dynamic> toJson() => {
//         "orderId": orderId,
//         "customerId": customerId,
//         "customer": customer.toJson(),
//         "carId": carId,
//         "car": car.toJson(),
//         "categoryId": categoryId,
//         "category": category.toJson(),
//         "serviceId": serviceId,
//         "service": service,
//         "companyWiseServiceId": companyWiseServiceId,
//         "companyWiseService": companyWiseService,
//         "numberOfBids": numberOfBids,
//         "bidId": bidId,
//         "bid": bid,
//         "companyId": companyId,
//         "company": company,
//         "orderImages": List<dynamic>.from(orderImages.map((x) => x)),
//         "carLatitude": carLatitude,
//         "carLongitude": carLongitude,
//         "readableOrderNo": readableOrderNo,
//         "qrCodeImage": qrCodeImage,
//         "bookingDate": bookingDate,
//         "bookingTime": bookingTime,
//         "details": details,
//         "orderTrackId": orderTrackId,
//         "orderTrack": orderTrack,
//         "couponId": couponId,
//         "price": price,
//         "vat": vat,
//         "serviceCharge": serviceCharge,
//         "subTotal": subTotal,
//         "discount": discount,
//         "grandTotal": grandTotal,
//         "totalRecord": totalRecord,
//         "driverId": driverId,
//         "driver": driver,
//         "orderPaypageUrl": orderPaypageUrl,
//         "orderReference": orderReference,
//         "gatewayResponse": gatewayResponse,
//         "accidentClaimTrackId": accidentClaimTrackId,
//         "accidentClaimTrack": accidentClaimTrack.toJson(),
//         "address": address,
//         "emailMessage": emailMessage,
//       };
// }

// class AccidentClaimTrack {
//   AccidentClaimTrack({
//     required this.accidentClaimTrackId,
//     required this.name,
//     required this.details,
//     required this.level,
//     required this.image,
//   });

//   int accidentClaimTrackId;
//   String name;
//   String details;
//   int level;
//   String image;

//   factory AccidentClaimTrack.fromJson(Map<String, dynamic> json) =>
//       AccidentClaimTrack(
//         accidentClaimTrackId: json["accidentClaimTrackId"],
//         name: json["name"],
//         details: json["details"],
//         level: json["level"],
//         image: json["image"],
//       );

//   Map<String, dynamic> toJson() => {
//         "accidentClaimTrackId": accidentClaimTrackId,
//         "name": name,
//         "details": details,
//         "level": level,
//         "image": image,
//       };
// }

// class Car {
//   Car({
//     required this.carId,
//     required this.vehicleBrandId,
//     required this.vehicleBrand,
//     required this.vehicleModelId,
//     required this.vehicleModel,
//     required this.year,
//     required this.vehicleNickName,
//     required this.customerId,
//     required this.customer,
//     required this.emirateId,
//     required this.emirates,
//     required this.plateNumber,
//     required this.insuranceType,
//     required this.insuranceNumber,
//     required this.assistanceNo,
//     required this.insuranceExpireDate,
//     required this.image,
//     required this.vehicleYearId,
//     required this.vehicleYear,
//   });

//   int carId;
//   int vehicleBrandId;
//   VehicleBrand vehicleBrand;
//   int vehicleModelId;
//   VehicleModel vehicleModel;
//   String year;
//   String vehicleNickName;
//   int customerId;
//   Customer customer;
//   int emirateId;
//   Emirate emirates;
//   String plateNumber;
//   String insuranceType;
//   String insuranceNumber;
//   String assistanceNo;
//   String insuranceExpireDate;
//   List<Image> image;
//   int vehicleYearId;
//   VehicleYear vehicleYear;

//   factory Car.fromJson(Map<String, dynamic> json) => Car(
//         carId: json["carId"],
//         vehicleBrandId: json["vehicleBrandId"],
//         vehicleBrand: VehicleBrand.fromJson(json["vehicleBrand"]),
//         vehicleModelId: json["vehicleModelId"],
//         vehicleModel: VehicleModel.fromJson(json["vehicleModel"]),
//         year: json["year"],
//         vehicleNickName: json["vehicleNickName"],
//         customerId: json["customerId"],
//         customer: Customer.fromJson(json["customer"]),
//         emirateId: json["emirateId"],
//         emirates: Emirate.fromJson(json["emirates"]),
//         plateNumber: json["plateNumber"],
//         insuranceType: json["insuranceType"],
//         insuranceNumber: json["insuranceNumber"],
//         assistanceNo: json["assistanceNo"],
//         insuranceExpireDate: json["insuranceExpireDate"],
//         image: List<Image>.from(json["image"].map((x) => Image.fromJson(x))),
//         vehicleYearId: json["vehicleYearId"],
//         vehicleYear: VehicleYear.fromJson(json["vehicleYear"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "carId": carId,
//         "vehicleBrandId": vehicleBrandId,
//         "vehicleBrand": vehicleBrand.toJson(),
//         "vehicleModelId": vehicleModelId,
//         "vehicleModel": vehicleModel.toJson(),
//         "year": year,
//         "vehicleNickName": vehicleNickName,
//         "customerId": customerId,
//         "customer": customer.toJson(),
//         "emirateId": emirateId,
//         "emirates": emirates.toJson(),
//         "plateNumber": plateNumber,
//         "insuranceType": insuranceType,
//         "insuranceNumber": insuranceNumber,
//         "assistanceNo": assistanceNo,
//         "insuranceExpireDate": insuranceExpireDate,
//         "image": List<dynamic>.from(image.map((x) => x.toJson())),
//         "vehicleYearId": vehicleYearId,
//         "vehicleYear": vehicleYear.toJson(),
//       };
// }

// class Customer {
//   Customer({
//     required this.customerId,
//     required this.fullName,
//     required this.email,
//     required this.phoneNumber,
//     required this.address,
//     required this.emirateId,
//     required this.emirate,
//     required this.isEmailNotificationEnable,
//     required this.createdAt,
//     required this.status,
//     required this.completedOrderCount,
//   });

//   int customerId;
//   String fullName;
//   String email;
//   String phoneNumber;
//   String address;
//   int emirateId;
//   Emirate emirate;
//   bool isEmailNotificationEnable;
//   DateTime createdAt;
//   bool status;
//   int completedOrderCount;

//   factory Customer.fromJson(Map<String, dynamic> json) => Customer(
//         customerId: json["customerId"],
//         fullName: json["fullName"],
//         email: json["email"],
//         phoneNumber: json["phoneNumber"],
//         address: json["address"],
//         emirateId: json["emirateId"],
//         emirate: Emirate.fromJson(json["emirate"]),
//         isEmailNotificationEnable: json["isEmailNotificationEnable"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         status: json["status"],
//         completedOrderCount: json["completedOrderCount"],
//       );

//   Map<String, dynamic> toJson() => {
//         "customerId": customerId,
//         "fullName": fullName,
//         "email": email,
//         "phoneNumber": phoneNumber,
//         "address": address,
//         "emirateId": emirateId,
//         "emirate": emirate.toJson(),
//         "isEmailNotificationEnable": isEmailNotificationEnable,
//         "createdAt": createdAt.toIso8601String(),
//         "status": status,
//         "completedOrderCount": completedOrderCount,
//       };
// }

// class Emirate {
//   Emirate({
//     required this.emirateId,
//     required this.emirateName,
//     required this.countryId,
//     required this.country,
//     required this.status,
//   });

//   int emirateId;
//   String emirateName;
//   int countryId;
//   Country country;
//   bool status;

//   factory Emirate.fromJson(Map<String, dynamic> json) => Emirate(
//         emirateId: json["emirateId"],
//         emirateName: json["emirateName"],
//         countryId: json["countryId"],
//         country: Country.fromJson(json["country"]),
//         status: json["status"],
//       );

//   Map<String, dynamic> toJson() => {
//         "emirateId": emirateId,
//         "emirateName": emirateName,
//         "countryId": countryId,
//         "country": country.toJson(),
//         "status": status,
//       };
// }

// class Country {
//   Country({
//     required this.countryId,
//     required this.name,
//     required this.iso,
//     required this.flag,
//     required this.callingCode,
//     required this.nationality,
//     required this.status,
//   });

//   int countryId;
//   String name;
//   String iso;
//   String flag;
//   String callingCode;
//   String nationality;
//   bool status;

//   factory Country.fromJson(Map<String, dynamic> json) => Country(
//         countryId: json["countryId"],
//         name: json["name"],
//         iso: json["iso"],
//         flag: json["flag"],
//         callingCode: json["callingCode"],
//         nationality: json["nationality"],
//         status: json["status"],
//       );

//   Map<String, dynamic> toJson() => {
//         "countryId": countryId,
//         "name": name,
//         "iso": iso,
//         "flag": flag,
//         "callingCode": callingCode,
//         "nationality": nationality,
//         "status": status,
//       };
// }

// class Image {
//   Image({
//     required this.carImageId,
//     required this.carId,
//     required this.carImages,
//   });

//   int carImageId;
//   int carId;
//   String carImages;

//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//         carImageId: json["carImageId"],
//         carId: json["carId"],
//         carImages: json["carImages"],
//       );

//   Map<String, dynamic> toJson() => {
//         "carImageId": carImageId,
//         "carId": carId,
//         "carImages": carImages,
//       };
// }

// class VehicleBrand {
//   VehicleBrand({
//     required this.vehicleBrandId,
//     required this.brandName,
//     required this.icon,
//     required this.details,
//     required this.status,
//   });

//   int vehicleBrandId;
//   String brandName;
//   String icon;
//   String details;
//   bool status;

//   factory VehicleBrand.fromJson(Map<String, dynamic> json) => VehicleBrand(
//         vehicleBrandId: json["vehicleBrandId"],
//         brandName: json["brandName"],
//         icon: json["icon"],
//         details: json["details"] == null ? null : json["details"],
//         status: json["status"],
//       );

//   Map<String, dynamic> toJson() => {
//         "vehicleBrandId": vehicleBrandId,
//         "brandName": brandName,
//         "icon": icon,
//         "details": details == null ? null : details,
//         "status": status,
//       };
// }

// class VehicleModel {
//   VehicleModel({
//     required this.vehicleModelId,
//     required this.modelName,
//     required this.icon,
//     required this.details,
//     required this.status,
//     required this.vehicleBrandId,
//     required this.vehicleBrand,
//   });

//   int vehicleModelId;
//   String modelName;
//   String icon;
//   String details;
//   bool status;
//   int vehicleBrandId;
//   VehicleBrand vehicleBrand;

//   factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
//         vehicleModelId: json["vehicleModelId"],
//         modelName: json["modelName"],
//         icon: json["icon"],
//         details: json["details"],
//         status: json["status"],
//         vehicleBrandId: json["vehicleBrandId"],
//         vehicleBrand: VehicleBrand.fromJson(json["vehicleBrand"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "vehicleModelId": vehicleModelId,
//         "modelName": modelName,
//         "icon": icon,
//         "details": details,
//         "status": status,
//         "vehicleBrandId": vehicleBrandId,
//         "vehicleBrand": vehicleBrand.toJson(),
//       };
// }

// class VehicleYear {
//   VehicleYear({
//     required this.vehicleYearId,
//     required this.details,
//     required this.vehicleModelId,
//     required this.vehicleModel,
//     required this.status,
//     required this.numberOfCylinder,
//     required this.make,
//     required this.shape,
//   });

//   int vehicleYearId;
//   String details;
//   int vehicleModelId;
//   VehicleModel vehicleModel;
//   bool status;
//   String numberOfCylinder;
//   String make;
//   String shape;

//   factory VehicleYear.fromJson(Map<String, dynamic> json) => VehicleYear(
//         vehicleYearId: json["vehicleYearId"],
//         details: json["details"],
//         vehicleModelId: json["vehicleModelId"],
//         vehicleModel: VehicleModel.fromJson(json["vehicleModel"]),
//         status: json["status"],
//         numberOfCylinder: json["numberOfCylinder"],
//         make: json["make"],
//         shape: json["shape"],
//       );

//   Map<String, dynamic> toJson() => {
//         "vehicleYearId": vehicleYearId,
//         "details": details,
//         "vehicleModelId": vehicleModelId,
//         "vehicleModel": vehicleModel.toJson(),
//         "status": status,
//         "numberOfCylinder": numberOfCylinder,
//         "make": make,
//         "shape": shape,
//       };
// }

// class Category {
//   Category({
//     required this.categoryId,
//     required this.categoryName,
//     required this.icon,
//     required this.details,
//   });

//   int categoryId;
//   String categoryName;
//   String icon;
//   String details;

//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//         categoryId: json["categoryId"],
//         categoryName: json["categoryName"],
//         icon: json["icon"],
//         details: json["details"],
//       );

//   Map<String, dynamic> toJson() => {
//         "categoryId": categoryId,
//         "categoryName": categoryName,
//         "icon": icon,
//         "details": details,
//       };
// }

// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

RequestModel requestModelFromJson(String str) =>
    RequestModel.fromJson(json.decode(str));

String requestModelToJson(RequestModel data) => json.encode(data.toJson());

class RequestModel {
  RequestModel({
    required this.orderId,
    required this.customerId,
    required this.customer,
    required this.carId,
    required this.car,
    required this.categoryId,
    required this.category,
    required this.serviceId,
    required this.service,
    required this.companyWiseServiceId,
    required this.companyWiseService,
    required this.numberOfBids,
    required this.bidId,
    required this.bid,
    required this.companyId,
    required this.company,
    required this.orderImages,
    required this.carLatitude,
    required this.carLongitude,
    required this.readableOrderNo,
    required this.qrCodeImage,
    required this.bookingDate,
    required this.bookingTime,
    required this.details,
    required this.orderTrackId,
    required this.orderTrack,
    required this.couponId,
    required this.price,
    required this.vat,
    required this.serviceCharge,
    required this.subTotal,
    required this.discount,
    required this.grandTotal,
    required this.totalRecord,
    required this.driverId,
    required this.driver,
    required this.orderPaypageUrl,
    required this.orderReference,
    required this.gatewayResponse,
    required this.accidentClaimTrackId,
    required this.accidentClaimTrack,
    required this.address,
    required this.emailMessage,
  });

  int orderId;
  int customerId;
  Customer customer;
  int carId;
  Car car;
  int categoryId;
  Category category;
  int serviceId;
  dynamic service;
  int companyWiseServiceId;
  dynamic companyWiseService;
  int numberOfBids;
  int bidId;
  dynamic bid;
  int companyId;
  dynamic company;
  List<String> orderImages;
  String carLatitude;
  String carLongitude;
  String readableOrderNo;
  String qrCodeImage;
  String bookingDate;
  String bookingTime;
  String details;
  int orderTrackId;
  dynamic orderTrack;
  int couponId;
  int price;
  int vat;
  int serviceCharge;
  int subTotal;
  int discount;
  int grandTotal;
  int totalRecord;
  int driverId;
  dynamic driver;
  dynamic orderPaypageUrl;
  dynamic orderReference;
  dynamic gatewayResponse;
  int accidentClaimTrackId;
  AccidentClaimTrack accidentClaimTrack;
  String address;
  dynamic emailMessage;

  factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
        orderId: json["orderId"] == null ? null : json["orderId"],
        customerId: json["customerId"] == null ? null : json["customerId"],
        customer: json["customer"] == null ? null : json["customer"],
        carId: json["carId"] == null ? null : json["carId"],
        car: json["car"] == null ? null : json["car"],
        categoryId: json["categoryId"] == null ? null : json["categoryId"],
        category: json["category"] == null ? null : json["category"],
        serviceId: json["serviceId"] == null ? null : json["serviceId"],
        service: json["service"],
        companyWiseServiceId: json["companyWiseServiceId"] == null
            ? null
            : json["companyWiseServiceId"],
        companyWiseService: json["companyWiseService"],
        numberOfBids:
            json["numberOfBids"] == null ? null : json["numberOfBids"],
        bidId: json["bidId"] == null ? null : json["bidId"],
        bid: json["bid"],
        companyId: json["companyId"] == null ? null : json["companyId"],
        company: json["company"],
        orderImages: json["orderImages"] == null ? null : json["orderImages"],
        carLatitude: json["carLatitude"] == null ? null : json["carLatitude"],
        carLongitude:
            json["carLongitude"] == null ? null : json["carLongitude"],
        readableOrderNo:
            json["readableOrderNo"] == null ? null : json["readableOrderNo"],
        qrCodeImage: json["qrCodeImage"] == null ? null : json["qrCodeImage"],
        bookingDate: json["bookingDate"] == null ? null : json["bookingDate"],
        bookingTime: json["bookingTime"] == null ? null : json["bookingTime"],
        details: json["details"] == null ? null : json["details"],
        orderTrackId:
            json["orderTrackId"] == null ? null : json["orderTrackId"],
        orderTrack: json["orderTrack"],
        couponId: json["couponId"] == null ? null : json["couponId"],
        price: json["price"] == null ? null : json["price"],
        vat: json["vat"] == null ? null : json["vat"],
        serviceCharge:
            json["serviceCharge"] == null ? null : json["serviceCharge"],
        subTotal: json["subTotal"] == null ? null : json["subTotal"],
        discount: json["discount"] == null ? null : json["discount"],
        grandTotal: json["grandTotal"] == null ? null : json["grandTotal"],
        totalRecord: json["totalRecord"] == null ? null : json["totalRecord"],
        driverId: json["driverId"] == null ? null : json["driverId"],
        driver: json["driver"],
        orderPaypageUrl: json["orderPaypageUrl"],
        orderReference: json["orderReference"],
        gatewayResponse: json["gatewayResponse"],
        accidentClaimTrackId: json["accidentClaimTrackId"] == null
            ? null
            : json["accidentClaimTrackId"],
        accidentClaimTrack: json["accidentClaimTrack"] == null
            ? null
            : json["accidentClaimTrack"],
        address: json["address"] == null ? null : json["address"],
        emailMessage: json["emailMessage"],
      );

  Map<String, dynamic> toJson() => {
        "orderId": orderId == null ? null : orderId,
        "customerId": customerId == null ? null : customerId,
        "customer": customer == null ? null : customer.toJson(),
        "carId": carId == null ? null : carId,
        "car": car == null ? null : car.toJson(),
        "categoryId": categoryId == null ? null : categoryId,
        "category": category == null ? null : category.toJson(),
        "serviceId": serviceId == null ? null : serviceId,
        "service": service,
        "companyWiseServiceId":
            companyWiseServiceId == null ? null : companyWiseServiceId,
        "companyWiseService": companyWiseService,
        "numberOfBids": numberOfBids == null ? null : numberOfBids,
        "bidId": bidId == null ? null : bidId,
        "bid": bid,
        "companyId": companyId == null ? null : companyId,
        "company": company,
        "orderImages": orderImages == null
            ? null
            : List<dynamic>.from(orderImages.map((x) => x)),
        "carLatitude": carLatitude == null ? null : carLatitude,
        "carLongitude": carLongitude == null ? null : carLongitude,
        "readableOrderNo": readableOrderNo == null ? null : readableOrderNo,
        "qrCodeImage": qrCodeImage == null ? null : qrCodeImage,
        "bookingDate": bookingDate == null ? null : bookingDate,
        "bookingTime": bookingTime == null ? null : bookingTime,
        "details": details == null ? null : details,
        "orderTrackId": orderTrackId == null ? null : orderTrackId,
        "orderTrack": orderTrack,
        "couponId": couponId == null ? null : couponId,
        "price": price == null ? null : price,
        "vat": vat == null ? null : vat,
        "serviceCharge": serviceCharge == null ? null : serviceCharge,
        "subTotal": subTotal == null ? null : subTotal,
        "discount": discount == null ? null : discount,
        "grandTotal": grandTotal == null ? null : grandTotal,
        "totalRecord": totalRecord == null ? null : totalRecord,
        "driverId": driverId == null ? null : driverId,
        "driver": driver,
        "orderPaypageUrl": orderPaypageUrl,
        "orderReference": orderReference,
        "gatewayResponse": gatewayResponse,
        "accidentClaimTrackId":
            accidentClaimTrackId == null ? null : accidentClaimTrackId,
        "accidentClaimTrack":
            accidentClaimTrack == null ? null : accidentClaimTrack.toJson(),
        "address": address == null ? null : address,
        "emailMessage": emailMessage,
      };
}

class AccidentClaimTrack {
  AccidentClaimTrack({
    required this.accidentClaimTrackId,
    required this.name,
    required this.details,
    required this.level,
    required this.image,
  });

  int accidentClaimTrackId;
  String name;
  String details;
  int level;
  String image;

  factory AccidentClaimTrack.fromJson(Map<String, dynamic> json) =>
      AccidentClaimTrack(
        accidentClaimTrackId: json["accidentClaimTrackId"] == null
            ? null
            : json["accidentClaimTrackId"],
        name: json["name"] == null ? null : json["name"],
        details: json["details"] == null ? null : json["details"],
        level: json["level"] == null ? null : json["level"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "accidentClaimTrackId":
            accidentClaimTrackId == null ? null : accidentClaimTrackId,
        "name": name == null ? null : name,
        "details": details == null ? null : details,
        "level": level == null ? null : level,
        "image": image == null ? null : image,
      };
}

class Car {
  Car({
    required this.carId,
    required this.vehicleBrandId,
    required this.vehicleBrand,
    required this.vehicleModelId,
    required this.vehicleModel,
    required this.year,
    required this.vehicleNickName,
    required this.customerId,
    required this.customer,
    required this.emirateId,
    required this.emirates,
    required this.plateNumber,
    required this.insuranceType,
    required this.insuranceNumber,
    required this.assistanceNo,
    required this.insuranceExpireDate,
    required this.image,
    required this.vehicleYearId,
    required this.vehicleYear,
  });

  int carId;
  int vehicleBrandId;
  VehicleBrand vehicleBrand;
  int vehicleModelId;
  VehicleModel vehicleModel;
  String year;
  String vehicleNickName;
  int customerId;
  Customer customer;
  int emirateId;
  Emirate emirates;
  String plateNumber;
  String insuranceType;
  String insuranceNumber;
  String assistanceNo;
  String insuranceExpireDate;
  List<Image> image;
  int vehicleYearId;
  VehicleYear vehicleYear;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        carId: json["carId"] == null ? null : json["carId"],
        vehicleBrandId:
            json["vehicleBrandId"] == null ? null : json["vehicleBrandId"],
        vehicleBrand:
            json["vehicleBrand"] == null ? null : json["vehicleBrand"],
        vehicleModelId:
            json["vehicleModelId"] == null ? null : json["vehicleModelId"],
        vehicleModel:
            json["vehicleModel"] == null ? null : json["vehicleModel"],
        year: json["year"] == null ? null : json["year"],
        vehicleNickName:
            json["vehicleNickName"] == null ? null : json["vehicleNickName"],
        customerId: json["customerId"] == null ? null : json["customerId"],
        customer: json["customer"] == null ? null : json["customer"],
        emirateId: json["emirateId"] == null ? null : json["emirateId"],
        emirates: json["emirates"] == null ? null : json["emirates"],
        plateNumber: json["plateNumber"] == null ? null : json["plateNumber"],
        insuranceType:
            json["insuranceType"] == null ? null : json["insuranceType"],
        insuranceNumber:
            json["insuranceNumber"] == null ? null : json["insuranceNumber"],
        assistanceNo:
            json["assistanceNo"] == null ? null : json["assistanceNo"],
        insuranceExpireDate: json["insuranceExpireDate"] == null
            ? null
            : json["insuranceExpireDate"],
        image: json["image"] == null ? null : json["image"],
        vehicleYearId:
            json["vehicleYearId"] == null ? null : json["vehicleYearId"],
        vehicleYear: json["vehicleYear"] == null ? null : json["vehicleYear"],
      );

  Map<String, dynamic> toJson() => {
        "carId": carId == null ? null : carId,
        "vehicleBrandId": vehicleBrandId == null ? null : vehicleBrandId,
        "vehicleBrand": vehicleBrand == null ? null : vehicleBrand.toJson(),
        "vehicleModelId": vehicleModelId == null ? null : vehicleModelId,
        "vehicleModel": vehicleModel == null ? null : vehicleModel.toJson(),
        "year": year == null ? null : year,
        "vehicleNickName": vehicleNickName == null ? null : vehicleNickName,
        "customerId": customerId == null ? null : customerId,
        "customer": customer == null ? null : customer.toJson(),
        "emirateId": emirateId == null ? null : emirateId,
        "emirates": emirates == null ? null : emirates.toJson(),
        "plateNumber": plateNumber == null ? null : plateNumber,
        "insuranceType": insuranceType == null ? null : insuranceType,
        "insuranceNumber": insuranceNumber == null ? null : insuranceNumber,
        "assistanceNo": assistanceNo == null ? null : assistanceNo,
        "insuranceExpireDate":
            insuranceExpireDate == null ? null : insuranceExpireDate,
        "image": image == null
            ? null
            : List<dynamic>.from(image.map((x) => x.toJson())),
        "vehicleYearId": vehicleYearId == null ? null : vehicleYearId,
        "vehicleYear": vehicleYear == null ? null : vehicleYear.toJson(),
      };
}

class Customer {
  Customer({
    required this.customerId,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.emirateId,
    required this.emirate,
    required this.isEmailNotificationEnable,
    required this.createdAt,
    required this.status,
    required this.completedOrderCount,
  });

  int customerId;
  String fullName;
  String email;
  String phoneNumber;
  String address;
  int emirateId;
  Emirate emirate;
  bool isEmailNotificationEnable;
  DateTime createdAt;
  bool status;
  int completedOrderCount;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        customerId: json["customerId"] == null ? null : json["customerId"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        email: json["email"] == null ? null : json["email"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        address: json["address"] == null ? null : json["address"],
        emirateId: json["emirateId"] == null ? null : json["emirateId"],
        emirate: json["emirate"] == null ? null : json["emirate"],
        isEmailNotificationEnable: json["isEmailNotificationEnable"] == null
            ? null
            : json["isEmailNotificationEnable"],
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        status: json["status"] == null ? null : json["status"],
        completedOrderCount: json["completedOrderCount"] == null
            ? null
            : json["completedOrderCount"],
      );

  Map<String, dynamic> toJson() => {
        "customerId": customerId == null ? null : customerId,
        "fullName": fullName == null ? null : fullName,
        "email": email == null ? null : email,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "address": address == null ? null : address,
        "emirateId": emirateId == null ? null : emirateId,
        "emirate": emirate == null ? null : emirate.toJson(),
        "isEmailNotificationEnable": isEmailNotificationEnable == null
            ? null
            : isEmailNotificationEnable,
        "createdAt": createdAt == null ? null : createdAt.toIso8601String(),
        "status": status == null ? null : status,
        "completedOrderCount":
            completedOrderCount == null ? null : completedOrderCount,
      };
}

class Emirate {
  Emirate({
    required this.emirateId,
    required this.emirateName,
    required this.countryId,
    required this.country,
    required this.status,
  });

  int emirateId;
  String emirateName;
  int countryId;
  Country country;
  bool status;

  factory Emirate.fromJson(Map<String, dynamic> json) => Emirate(
        emirateId: json["emirateId"] == null ? null : json["emirateId"],
        emirateName: json["emirateName"] == null ? null : json["emirateName"],
        countryId: json["countryId"] == null ? null : json["countryId"],
        country: json["country"] == null ? null : json["country"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "emirateId": emirateId == null ? null : emirateId,
        "emirateName": emirateName == null ? null : emirateName,
        "countryId": countryId == null ? null : countryId,
        "country": country == null ? null : country.toJson(),
        "status": status == null ? null : status,
      };
}

class Country {
  Country({
    required this.countryId,
    required this.name,
    required this.iso,
    required this.flag,
    required this.callingCode,
    required this.nationality,
    required this.status,
  });

  int countryId;
  String name;
  String iso;
  String flag;
  String callingCode;
  String nationality;
  bool status;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        countryId: json["countryId"] == null ? null : json["countryId"],
        name: json["name"] == null ? null : json["name"],
        iso: json["iso"] == null ? null : json["iso"],
        flag: json["flag"] == null ? null : json["flag"],
        callingCode: json["callingCode"] == null ? null : json["callingCode"],
        nationality: json["nationality"] == null ? null : json["nationality"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "countryId": countryId == null ? null : countryId,
        "name": name == null ? null : name,
        "iso": iso == null ? null : iso,
        "flag": flag == null ? null : flag,
        "callingCode": callingCode == null ? null : callingCode,
        "nationality": nationality == null ? null : nationality,
        "status": status == null ? null : status,
      };
}

class Image {
  Image({
    required this.carImageId,
    required this.carId,
    required this.carImages,
  });

  int carImageId;
  int carId;
  String carImages;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        carImageId: json["carImageId"] == null ? null : json["carImageId"],
        carId: json["carId"] == null ? null : json["carId"],
        carImages: json["carImages"] == null ? null : json["carImages"],
      );

  Map<String, dynamic> toJson() => {
        "carImageId": carImageId == null ? null : carImageId,
        "carId": carId == null ? null : carId,
        "carImages": carImages == null ? null : carImages,
      };
}

class VehicleBrand {
  VehicleBrand({
    required this.vehicleBrandId,
    required this.brandName,
    required this.icon,
    required this.details,
    required this.status,
  });

  int vehicleBrandId;
  String brandName;
  String icon;
  String details;
  bool status;

  factory VehicleBrand.fromJson(Map<String, dynamic> json) => VehicleBrand(
        vehicleBrandId:
            json["vehicleBrandId"] == null ? null : json["vehicleBrandId"],
        brandName: json["brandName"] == null ? null : json["brandName"],
        icon: json["icon"] == null ? null : json["icon"],
        details: json["details"] == null ? null : json["details"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "vehicleBrandId": vehicleBrandId == null ? null : vehicleBrandId,
        "brandName": brandName == null ? null : brandName,
        "icon": icon == null ? null : icon,
        "details": details == null ? null : details,
        "status": status == null ? null : status,
      };
}

class VehicleModel {
  VehicleModel({
    required this.vehicleModelId,
    required this.modelName,
    required this.icon,
    required this.details,
    required this.status,
    required this.vehicleBrandId,
    required this.vehicleBrand,
  });

  int vehicleModelId;
  String modelName;
  String icon;
  String details;
  bool status;
  int vehicleBrandId;
  VehicleBrand vehicleBrand;

  factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
        vehicleModelId:
            json["vehicleModelId"] == null ? null : json["vehicleModelId"],
        modelName: json["modelName"] == null ? null : json["modelName"],
        icon: json["icon"] == null ? null : json["icon"],
        details: json["details"] == null ? null : json["details"],
        status: json["status"] == null ? null : json["status"],
        vehicleBrandId:
            json["vehicleBrandId"] == null ? null : json["vehicleBrandId"],
        vehicleBrand:
            json["vehicleBrand"] == null ? null : json["vehicleBrand"],
      );

  Map<String, dynamic> toJson() => {
        "vehicleModelId": vehicleModelId == null ? null : vehicleModelId,
        "modelName": modelName == null ? null : modelName,
        "icon": icon == null ? null : icon,
        "details": details == null ? null : details,
        "status": status == null ? null : status,
        "vehicleBrandId": vehicleBrandId == null ? null : vehicleBrandId,
        "vehicleBrand": vehicleBrand == null ? null : vehicleBrand.toJson(),
      };
}

class VehicleYear {
  VehicleYear({
    required this.vehicleYearId,
    required this.details,
    required this.vehicleModelId,
    required this.vehicleModel,
    required this.status,
    required this.numberOfCylinder,
    required this.make,
    required this.shape,
  });

  int vehicleYearId;
  String details;
  int vehicleModelId;
  VehicleModel vehicleModel;
  bool status;
  String numberOfCylinder;
  String make;
  String shape;

  factory VehicleYear.fromJson(Map<String, dynamic> json) => VehicleYear(
        vehicleYearId:
            json["vehicleYearId"] == null ? null : json["vehicleYearId"],
        details: json["details"] == null ? null : json["details"],
        vehicleModelId:
            json["vehicleModelId"] == null ? null : json["vehicleModelId"],
        vehicleModel:
            json["vehicleModel"] == null ? null : json["vehicleModel"],
        status: json["status"] == null ? null : json["status"],
        numberOfCylinder:
            json["numberOfCylinder"] == null ? null : json["numberOfCylinder"],
        make: json["make"] == null ? null : json["make"],
        shape: json["shape"] == null ? null : json["shape"],
      );

  Map<String, dynamic> toJson() => {
        "vehicleYearId": vehicleYearId == null ? null : vehicleYearId,
        "details": details == null ? null : details,
        "vehicleModelId": vehicleModelId == null ? null : vehicleModelId,
        "vehicleModel": vehicleModel == null ? null : vehicleModel.toJson(),
        "status": status == null ? null : status,
        "numberOfCylinder": numberOfCylinder == null ? null : numberOfCylinder,
        "make": make == null ? null : make,
        "shape": shape == null ? null : shape,
      };
}

class Category {
  Category({
    required this.categoryId,
    required this.categoryName,
    required this.icon,
    required this.details,
  });

  int categoryId;
  String categoryName;
  String icon;
  String details;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryId: json["categoryId"] == null ? null : json["categoryId"],
        categoryName:
            json["categoryName"] == null ? null : json["categoryName"],
        icon: json["icon"] == null ? null : json["icon"],
        details: json["details"] == null ? null : json["details"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId == null ? null : categoryId,
        "categoryName": categoryName == null ? null : categoryName,
        "icon": icon == null ? null : icon,
        "details": details == null ? null : details,
      };
}
