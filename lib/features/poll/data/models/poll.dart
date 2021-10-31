/// id : "vAJax5hdbF"
/// title : "Effects of the Healy on human emotions"
/// description : "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email"
/// startedAt : "01.01.2021"
/// endedAt : "31.12.2021"
/// imageUrl : "https://firebasestorage.googleapis.com/v0/b/healy-identity.appspot.com/o/polls%2FvAJax5hdbF.jpg?alt=media&token=4217d7e6-e855-47dc-a55e-8c692668a6ba"
/// termsAndConditionsUrl : "https://us.healy.shop/terms-of-use/"
/// finishText : "Thank you very much for your participation.\nnWe will contact you if you have any questions or to inform you about the next steps."
/// questions : [{"id":"n0aq3sqRU7","text":"In the past week, which emotion did you feel most often?","type":"multiple","required":true,"answers":[{"text":"Happy","value":0},{"text":"Excited","value":1},{"text":"Restless","value":2},{"text":"Sad","value":3},{"text":"Worried","value":4},{"text":"Angry","value":5}]},{"id":"RZYRrFYzCc","text":"Does this emotion affect your temper during the rest of the day?","type":"rating","required":true,"answers":[{"text":"Strongly disagree","value":0},{"text":"Disagree","value":1},{"text":"Neurtral","value":2},{"text":"Aggreed","value":3},{"text":"Strongly Agree","value":4}]},{"id":"RZYRrFYzCc","text":"Does this emotion affect your temper during the rest of the day?","type":"rating","required":true,"answers":[{"text":"Strongly disagree","value":0},{"text":"Disagree","value":1},{"text":"Neurtral","value":2},{"text":"Aggreed","value":3},{"text":"Strongly Agree","value":4}]},{"id":"4J456QofoL","text":"What event or events caused you to feel that emotion most frequently?","type":"text","required":true},{"id":"RZYRrFYzCc","text":"Does this emotion affect your temper during the rest of the day?","type":"rating","required":true,"answers":[{"text":"Strongly disagree","value":0},{"text":"Disagree","value":1},{"text":"Neurtral","value":2},{"text":"Aggreed","value":3},{"text":"Strongly Agree","value":4}]},{"id":"ZghdtdeD","text":"When do you normally use the Healy?","type":"multiple","required":true,"answers":[{"text":"In the morning","value":0},{"text":"In the evening","value":1},{"text":"Before badtime","value":2},{"text":"After an emotional situation","value":3},{"text":"At work","value":4},{"text":"For sport","value":5}]}]

class PollModel {
  Poll({
    String? id,
    String? title,
    String? description,
    String? startedAt,
    String? endedAt,
    String? imageUrl,
    String? termsAndConditionsUrl,
    String? finishText,
    List<QuestionsModel>? questions,
  }) {
    _id = id;
    _title = title;
    _description = description;
    _startedAt = startedAt;
    _endedAt = endedAt;
    _imageUrl = imageUrl;
    _termsAndConditionsUrl = termsAndConditionsUrl;
    _finishText = finishText;
    _questions = questions;
  }

  PollModel.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _startedAt = json['startedAt'];
    _endedAt = json['endedAt'];
    _imageUrl = json['imageUrl'];
    _termsAndConditionsUrl = json['termsAndConditionsUrl'];
    _finishText = json['finishText'];
    if (json['questions'] != null) {
      _questions = [];
      json['questions'].forEach((v) {
        _questions?.add(QuestionsModel.fromJson(v));
      });
    }
  }
  String? _id;
  String? _title;
  String? _description;
  String? _startedAt;
  String? _endedAt;
  String? _imageUrl;
  String? _termsAndConditionsUrl;
  String? _finishText;
  List<QuestionsModel>? _questions;

  String? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get startedAt => _startedAt;
  String? get endedAt => _endedAt;
  String? get imageUrl => _imageUrl;
  String? get termsAndConditionsUrl => _termsAndConditionsUrl;
  String? get finishText => _finishText;
  List<QuestionsModel>? get questions => _questions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['startedAt'] = _startedAt;
    map['endedAt'] = _endedAt;
    map['imageUrl'] = _imageUrl;
    map['termsAndConditionsUrl'] = _termsAndConditionsUrl;
    map['finishText'] = _finishText;
    if (_questions != null) {
      map['questions'] = _questions?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "n0aq3sqRU7"
/// text : "In the past week, which emotion did you feel most often?"
/// type : "multiple"
/// required : true
/// answers : [{"text":"Happy","value":0},{"text":"Excited","value":1},{"text":"Restless","value":2},{"text":"Sad","value":3},{"text":"Worried","value":4},{"text":"Angry","value":5}]

class QuestionsModel {
  QuestionsModel({
    String? id,
    String? text,
    String? type,
    bool? required,
    List<AnswersModel>? answers,
  }) {
    _id = id;
    _text = text;
    _type = type;
    _required = required;
    _answers = answers;
  }

  QuestionsModel.fromJson(dynamic json) {
    _id = json['id'];
    _text = json['text'];
    _type = json['type'];
    _required = json['required'];
    if (json['answers'] != null) {
      _answers = [];
      json['answers'].forEach((v) {
        _answers?.add(AnswersModel.fromJson(v));
      });
    }
  }
  String? _id;
  String? _text;
  String? _type;
  bool? _required;
  List<AnswersModel>? _answers;

  String? get id => _id;
  String? get text => _text;
  String? get type => _type;
  bool? get required => _required;
  List<AnswersModel>? get answers => _answers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['text'] = _text;
    map['type'] = _type;
    map['required'] = _required;
    if (_answers != null) {
      map['answers'] = _answers?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// text : "Happy"
/// value : 0

class AnswersModel {
  Answers({
    String? text,
    int? value,
  }) {
    _text = text;
    _value = value;
  }

  AnswersModel.fromJson(dynamic json) {
    _text = json['text'];
    _value = json['value'];
  }
  String? _text;
  int? _value;

  String? get text => _text;
  int? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['value'] = _value;
    return map;
  }
}
