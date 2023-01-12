class FilterChipData {
  String label;
  bool isSelected;
  FilterChipData(this.label, this.isSelected);
}
List<FilterChipData> categories = [
  FilterChipData("Action", false),
  FilterChipData("Shooter", false),
  FilterChipData("Adventure", false),
  FilterChipData("Horror", false)
];