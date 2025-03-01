import 'dart:convert';

class ProjectModel {
  final int id;
  final String name;
  final String description;
  final String status;
  final String createDate;
  final dynamic lastModified;
  final int createdBy;
  final dynamic lastModifiedBy;   
  ProjectModel({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.createDate,
    required this.lastModified,
    required this.createdBy,
    required this.lastModifiedBy,
  });

  ProjectModel copyWith({
    int? id,
    String? name,
    String? description,
    String? status,
    String? createDate,
    dynamic? lastModified,
    int? createdBy,
    dynamic? lastModifiedBy,
  }) {
    return ProjectModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      status: status ?? this.status,
      createDate: createDate ?? this.createDate,
      lastModified: lastModified ?? this.lastModified,
      createdBy: createdBy ?? this.createdBy,
      lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
    );
  }

  Map<dynamic, dynamic> toMap() {
    return <dynamic, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'status': status,
      'createDate': createDate,
      'lastModified': lastModified,
      'createdBy': createdBy,
      'lastModifiedBy': lastModifiedBy,
    };
  }

  factory ProjectModel.fromMap(Map<dynamic, dynamic> map) {
    return ProjectModel(
      id: map['id'] as int? ?? 0,
      name: map['name'] as String? ?? "no name",
      description: map['description'] as String? ?? "no description",
      status: map['status'] as String? ?? "no status",
      createDate: map['createDate'] as String? ?? "no date",
      lastModified: map['lastModified'] as dynamic,
      createdBy: map['createdBy'] as int? ?? 0,
      lastModifiedBy: map['lastModifiedBy'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectModel.fromJson(String source) => ProjectModel.fromMap(json.decode(source) as Map<dynamic, dynamic>);

  @override
  String toString() {
    return 'ProjectModel(id: $id, name: $name, description: $description, status: $status, createDate: $createDate, lastModified: $lastModified, createdBy: $createdBy, lastModifiedBy: $lastModifiedBy)';
  }

  @override
  bool operator ==(covariant ProjectModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.status == status &&
      other.createDate == createDate &&
      other.lastModified == lastModified &&
      other.createdBy == createdBy &&
      other.lastModifiedBy == lastModifiedBy;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      status.hashCode ^
      createDate.hashCode ^
      lastModified.hashCode ^
      createdBy.hashCode ^
      lastModifiedBy.hashCode;
  }
}
