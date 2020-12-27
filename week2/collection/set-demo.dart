void main() {
  final projectA = {"Aung Aung", "Maung Maung", "Thuza"};
  final projectB = {"Hla Hla", "Yu Yu", "Thuza"};
  // extract single data from 2 set where they are same values
  print(projectA.union(projectB));
  print(projectA.intersection(projectB));
  print(projectA.difference(projectB));
}
