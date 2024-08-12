String extractInitials(String name) {
  List<String> nameParts = name.split(' ');
  if (nameParts.isNotEmpty) {
    return nameParts[0][0].toUpperCase(); // First letter of the first name
  } else {
    return ''; // Return empty string if name is empty
  }
}
