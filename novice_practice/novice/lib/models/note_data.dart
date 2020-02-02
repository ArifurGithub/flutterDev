class Note {
  int _id;
  String _title;
  String _date;
  String _description;
  int _priority;

  Note(this._title, this._date, this._priority, [this._description]);

  Note.withId(this._id, this._title, this._date, this._priority, [this._description]);

  int get priority => _priority;

  set priority(int value) {
    _priority = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  //Convert a Note object to Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['date'] = _date;
    map['priority'] = _priority;
    map['description'] = _description;
    return map;
  }

  //Extract a note object from a map object
  Note.fromMapObject(Map<String, dynamic> map){
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._date = map['date'];
    this._priority = map['priority'];
  }
}
