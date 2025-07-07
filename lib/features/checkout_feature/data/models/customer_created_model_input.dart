class CustomerCreatedModelInput {
  final String name;
  final String? description;
  final String? email;
  final String? phone;
  final String? address;

  CustomerCreatedModelInput({
    required this.name,
    this.description,
    this.email,
    this.phone,
    this.address,
  });

  toJson() {
    return {
      'name': name,
      'description': description,
      'email': email,
      'phone': phone,
      'address': address,
    };
  }
}
