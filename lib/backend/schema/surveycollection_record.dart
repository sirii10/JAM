import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SurveycollectionRecord extends FirestoreRecord {
  SurveycollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "start_time" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "num_people" field.
  int? _numPeople;
  int get numPeople => _numPeople ?? 0;
  bool hasNumPeople() => _numPeople != null;

  // "num_female_participants" field.
  int? _numFemaleParticipants;
  int get numFemaleParticipants => _numFemaleParticipants ?? 0;
  bool hasNumFemaleParticipants() => _numFemaleParticipants != null;

  // "instruments" field.
  List<String>? _instruments;
  List<String> get instruments => _instruments ?? const [];
  bool hasInstruments() => _instruments != null;

  // "jam_style" field.
  String? _jamStyle;
  String get jamStyle => _jamStyle ?? '';
  bool hasJamStyle() => _jamStyle != null;

  // "jam_similarity" field.
  String? _jamSimilarity;
  String get jamSimilarity => _jamSimilarity ?? '';
  bool hasJamSimilarity() => _jamSimilarity != null;

  // "song_list" field.
  List<String>? _songList;
  List<String> get songList => _songList ?? const [];
  bool hasSongList() => _songList != null;

  // "uploaded_images" field.
  List<String>? _uploadedImages;
  List<String> get uploadedImages => _uploadedImages ?? const [];
  bool hasUploadedImages() => _uploadedImages != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "date_of_session" field.
  String? _dateOfSession;
  String get dateOfSession => _dateOfSession ?? '';
  bool hasDateOfSession() => _dateOfSession != null;

  void _initializeFields() {
    _startTime = snapshotData['start_time'] as String?;
    _endTime = snapshotData['end_time'] as String?;
    _location = snapshotData['location'] as String?;
    _numPeople = castToType<int>(snapshotData['num_people']);
    _numFemaleParticipants =
        castToType<int>(snapshotData['num_female_participants']);
    _instruments = getDataList(snapshotData['instruments']);
    _jamStyle = snapshotData['jam_style'] as String?;
    _jamSimilarity = snapshotData['jam_similarity'] as String?;
    _songList = getDataList(snapshotData['song_list']);
    _uploadedImages = getDataList(snapshotData['uploaded_images']);
    _feedback = snapshotData['feedback'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _email = snapshotData['email'] as String?;
    _dateOfSession = snapshotData['date_of_session'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('surveycollection');

  static Stream<SurveycollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SurveycollectionRecord.fromSnapshot(s));

  static Future<SurveycollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SurveycollectionRecord.fromSnapshot(s));

  static SurveycollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SurveycollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SurveycollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SurveycollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SurveycollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SurveycollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSurveycollectionRecordData({
  String? startTime,
  String? endTime,
  String? location,
  int? numPeople,
  int? numFemaleParticipants,
  String? jamStyle,
  String? jamSimilarity,
  String? feedback,
  String? firstName,
  String? lastName,
  String? email,
  String? dateOfSession,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'start_time': startTime,
      'end_time': endTime,
      'location': location,
      'num_people': numPeople,
      'num_female_participants': numFemaleParticipants,
      'jam_style': jamStyle,
      'jam_similarity': jamSimilarity,
      'feedback': feedback,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'date_of_session': dateOfSession,
    }.withoutNulls,
  );

  return firestoreData;
}

class SurveycollectionRecordDocumentEquality
    implements Equality<SurveycollectionRecord> {
  const SurveycollectionRecordDocumentEquality();

  @override
  bool equals(SurveycollectionRecord? e1, SurveycollectionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.location == e2?.location &&
        e1?.numPeople == e2?.numPeople &&
        e1?.numFemaleParticipants == e2?.numFemaleParticipants &&
        listEquality.equals(e1?.instruments, e2?.instruments) &&
        e1?.jamStyle == e2?.jamStyle &&
        e1?.jamSimilarity == e2?.jamSimilarity &&
        listEquality.equals(e1?.songList, e2?.songList) &&
        listEquality.equals(e1?.uploadedImages, e2?.uploadedImages) &&
        e1?.feedback == e2?.feedback &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.email == e2?.email &&
        e1?.dateOfSession == e2?.dateOfSession;
  }

  @override
  int hash(SurveycollectionRecord? e) => const ListEquality().hash([
        e?.startTime,
        e?.endTime,
        e?.location,
        e?.numPeople,
        e?.numFemaleParticipants,
        e?.instruments,
        e?.jamStyle,
        e?.jamSimilarity,
        e?.songList,
        e?.uploadedImages,
        e?.feedback,
        e?.firstName,
        e?.lastName,
        e?.email,
        e?.dateOfSession
      ]);

  @override
  bool isValidKey(Object? o) => o is SurveycollectionRecord;
}
