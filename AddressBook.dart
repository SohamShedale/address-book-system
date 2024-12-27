import "dart:io";

class Contacts {
  final String? firstName;
  final String? lastName;
  final String? address;
  final String? state;
  final String? city;
  final int? zip;
  final int? phoneNumber;
  final String? email;

  Contacts(
      {required this.firstName,
      required this.lastName,
      required this.address,
      required this.city,
      required this.state,
      required this.zip,
      required this.phoneNumber,
      required this.email});

  @override
  String toString() {
    return "Name: $firstName $lastName, Address: $address, City: $city, State: $state, Zip: $zip, Phone Number: $phoneNumber, Email: $email";
  }
}

void main() {
  
}
