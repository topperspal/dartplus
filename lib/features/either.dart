library either;

Either<L, R> left<L, R>(L left) => Either(left, null);
Either<L, R> right<L, R>(R right) => Either(null, right);

class Either<L, R> {
  final L? _l;
  final R? _r;

  Either(this._l, this._r);

  bool get isLeft => _l != null;
  bool get isRight => _r != null;

  L? get left => _l;
  R? get right => _r;
}
