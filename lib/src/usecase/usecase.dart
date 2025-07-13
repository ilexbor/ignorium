abstract interface class UseCase<T> {
  Future<T> call();
}
