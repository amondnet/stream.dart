class Enrichment {
  Enrichment._();

  static String createCollectionReference(String collection, String id) {
    return 'SO:$collection:$id';
  }

  static String createUserReference(String id) {
    return 'SU:$id';
  }

  static String createActivityReference(String id) {
    return 'SA:$id';
  }
}
