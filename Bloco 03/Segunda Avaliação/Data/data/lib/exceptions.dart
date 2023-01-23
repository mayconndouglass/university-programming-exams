class TypeError {
  @override
  String toString() => '(ERROR) Type Error';

  String get message => toString();
}

class InvalidTypeError extends TypeError {
  @override
  String toString() => '(ERROR) Invalid File Type';
}

class EmptyFileError extends TypeError {
  @override
  String toString() => '(ERROR) Empty File';
}

class InvalidFieldsError extends TypeError {
  @override
  String toString() => '(ERROR) Invalid Fields';
}

class EmptyMemoryError extends TypeError {
  @override
  String toString() => '(ERROR) Empty Memory';
}
