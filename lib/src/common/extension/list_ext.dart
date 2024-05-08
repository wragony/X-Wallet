extension ListExt<T> on List<T> {
  List<T> operator +(List<T> list) {
    addAll(list);
    return this;
  }

  List<T> filter(bool Function(T) block) {
    List<T> result = [];
    forEach((element) {
      if (block(element)) {
        result.add(element);
      }
    });
    return result;
  }
}
