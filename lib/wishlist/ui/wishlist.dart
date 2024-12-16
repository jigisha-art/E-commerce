import 'package:flutter/material.dart';

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
/*
class groupInsurance {
  int? documentDetailsId;
  int? corporateId;
  int? employeeRefId;
  String? employeeName;
  int? employeeDependentDetailsId;
  int? relationshipId;
  String? relationship;
  String? documentName;
  String? documentPath;
  String? uploadedOn;
  int? uploadedBy;

  groupInsurance(
      {this.documentDetailsId,
      this.corporateId,
      this.employeeRefId,
      this.employeeName,
      this.employeeDependentDetailsId,
      this.relationshipId,
      this.relationship,
      this.documentName,
      this.documentPath,
      this.uploadedOn,
      this.uploadedBy});

  groupInsurance.fromJson(Map<String, dynamic> json) {
    documentDetailsId = json['DocumentDetailsId'];
    corporateId = json['CorporateId'];
    employeeRefId = json['EmployeeRefId'];
    employeeName = json['EmployeeName'];
    employeeDependentDetailsId = json['EmployeeDependentDetailsId'];
    relationshipId = json['RelationshipId'];
    relationship = json['Relationship'];
    documentName = json['DocumentName'];
    documentPath = json['DocumentPath'];
    uploadedOn = json['UploadedOn'];
    uploadedBy = json['UploadedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DocumentDetailsId'] = this.documentDetailsId;
    data['CorporateId'] = this.corporateId;
    data['EmployeeRefId'] = this.employeeRefId;
    data['EmployeeName'] = this.employeeName;
    data['EmployeeDependentDetailsId'] = this.employeeDependentDetailsId;
    data['RelationshipId'] = this.relationshipId;
    data['Relationship'] = this.relationship;
    data['DocumentName'] = this.documentName;
    data['DocumentPath'] = this.documentPath;
    data['UploadedOn'] = this.uploadedOn;
    data['UploadedBy'] = this.uploadedBy;
    return data;
  }
}

* */