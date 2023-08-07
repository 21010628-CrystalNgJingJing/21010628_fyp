
class LifeStages {
  final int id;
  final String name;
  final String description;
  final String recommendedPlan;
  final String imageLocation;

  const LifeStages({
    required this.id,
    required this.name,
    required this.description,
    required this.recommendedPlan,
    required this.imageLocation,

  });

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'recommendedPlan': recommendedPlan,
      'imageLocation': imageLocation
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'LifeStages{id: $id, name: $name, description: $description, recommendedPlan: $recommendedPlan, imageLocation: $imageLocation}';
  }
}






