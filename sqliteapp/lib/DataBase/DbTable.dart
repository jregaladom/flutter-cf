class DBTable {
  static const diary = "diary";
  static const page = "page";
  static const tables = [
    "CREATE TABLE IF NOT EXISTS " +
        diary +
        "("
            "id INTEGER PRIMARY KEY AUTOINCREMENT,"
            "type TEXT,"
            "enterCode TEXT"
            ")",
    "CREATE TABLE IF NOT EXISTS " +
        page +
        "("
            "id INTEGER PRIMARY KEY AUTOINCREMENT,"
            "date TEXT,"
            "title TEXT,"
            "content TEXT,"
            "diaryId INTEGER,"
            "FOREIGN KEY(diaryId) REFERENCES " +
        diary +
        "(id)"
            ")",
  ];
}
