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

class Addressbook {
  final String name;
  final List<Contacts> contacts = [];

  Addressbook(this.name);

  void addContact(Contacts contact) {
    contacts.add(contact);
  }
}

void main() {
  Map<String, Addressbook> addressBooks = {};

  while (true) {
    print('\nAddress Book Menu:');
    print('1. Create Address Book');
    print('2. Add Contact');

    stdout.write("Enter your choice: ");
    final choice = int.tryParse(stdin.readLineSync() ?? "");

    switch (choice) {
      case 1:
        stdout.write("Enter Address Book name: ");
        final addressBookName = stdin.readLineSync();
        if (addressBookName != null) {
          addressBooks[addressBookName] = Addressbook(addressBookName);
          print("Address Book \'$addressBookName\' created successfully");
        }
        break;

      case 2:
        stdout.write("Enter address book name to add contact: ");
        final addressBookName = stdin.readLineSync();
        final addressBook = addressBooks[addressBookName];

        if (addressBook == null) {
          print("Address book not found");
          break;
        }

        stdout.write("Enter first name: ");
        final firstName = stdin.readLineSync();
        stdout.write("Enter last name: ");
        final lastName = stdin.readLineSync();
        stdout.write("Enter address: ");
        final address = stdin.readLineSync();
        stdout.write("Enter state: ");
        final state = stdin.readLineSync();
        stdout.write("Enter city: ");
        final city = stdin.readLineSync();
        stdout.write("Enter zip code: ");
        final zip = int.tryParse(stdin.readLineSync()!);
        stdout.write("Enter phone number: ");
        final phoneNumber = int.tryParse(stdin.readLineSync()!);
        stdout.write("Enter email address: ");
        final email = stdin.readLineSync();

        final newContact = Contacts(
          firstName: firstName,
          lastName: lastName,
          address: address,
          state: state,
          city: city,
          zip: zip,
          phoneNumber: phoneNumber,
          email: email,
        );

        addressBook.addContact(newContact);
        print("New contact added in $addressBookName");
        break;

      default:
        print("Invalid choice");
    }
  }
}
