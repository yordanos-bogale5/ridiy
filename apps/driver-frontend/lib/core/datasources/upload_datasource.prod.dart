// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:driver_flutter/core/graphql/fragments/media.fragment.graphql.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as path;
import 'package:driver_flutter/config/env.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'upload_datasource.dart';

@prod
@LazySingleton(as: UploadDatasource)
class UploadDatasourceImpl implements UploadDatasource {
  UploadDatasourceImpl();

  @override
  Future<Fragment$Media> uploadProfilePicture(String filePath) async {
    String? token = locator<AuthBloc>().state.jwtToken;
    if (token == null) throw Exception('No JWT token found');
    final serverUrl = path.join(Env.serverUrl, 'upload_profile');
    return _uploadFile(serverUrl, token, filePath);
  }

  Future<Fragment$Media> _uploadFile(String serverUrl, String authorizationToken, String filePath) async {
    var postUri = Uri.parse(serverUrl);
    var request = MultipartRequest("POST", postUri);
    request.headers['Authorization'] = 'Bearer $authorizationToken';
    request.files.add(await MultipartFile.fromPath('file', filePath));
    final stramedResponse = await request.send();
    var response = await Response.fromStream(stramedResponse);
    var json = jsonDecode(response.body);
    final media = Fragment$Media.fromJson(json);

    return Fragment$Media(
      id: media.id,
      address: media.address,
    );
  }

  @override
  Future<Fragment$Media> uploadDocument(String filePath) {
    String? token = locator<AuthBloc>().state.jwtToken;
    if (token == null) throw Exception('No JWT token found');
    final serverUrl = path.join(Env.serverUrl, 'upload_document');
    return _uploadFile(serverUrl, token, filePath);
  }
}
