void main() {
  Map<String, int> map = {
    'John': 85000,
    'Marc': 55000,
    'Andrew': 70000,
    'Lucas': 102000,
    'Damon': 67000,
    'Felix': 83000
  };

  map.entries.forEach((e) {
    if (e.value >= 50000 && e.value <= 75000) {
      print(e.key);
    }
  });
}