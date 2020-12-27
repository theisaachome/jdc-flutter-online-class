void main() {
  final recipes = [
    {
      "name": "Shane Noodle",
      "cuisine": "Myanmar",
      "ratings": [5.0, 3.5, 3]
    },
    {
      "name": "Korean Rib Soup",
      "cuisine": "Myanmar",
      "ratings": [5.0, 3.5, 3]
    },
    {
      "name": "Mohinga Noodle",
      "cuisine": "Myanmar",
      "ratings": [5.0, 3.5, 3]
    },
  ];

  for (var recipe in recipes) {
    print(recipe);
  }
}
