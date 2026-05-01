import 'package:supabase_flutter/supabase_flutter.dart';

class DatabaseService {
  final _supabase = Supabase.instance.client;

  // 1. Create - ඇතුළත් කිරීම
  Future<void> insertData(String tableName, Map<String, dynamic> data) async {
    try {
      await _supabase.from(tableName).insert(data);
    } catch (e) {
      throw Exception('Insert Error: $e');
    }
  }

  // 2. Read - ලැයිස්තුව ලබා ගැනීම (Realtime Stream)
  Stream<List<Map<String, dynamic>>> getStream(String tableName) {
    return _supabase.from(tableName).stream(primaryKey: ['id']);
  }

  // 3. Update - විස්තර වෙනස් කිරීම
  Future<void> updateData(String tableName, String id, Map<String, dynamic> data,) async {
    try {
      await _supabase.from(tableName).update(data).eq('id', id);
    } catch (e) {
      throw Exception('Update Error in $tableName: $e');
    }
  }

  // 4. Delete - ආයතනයක් මකා දැමීම
  Future<void> deleteData(String tableName, String id) async {
    try {
      await _supabase.from(tableName).delete().eq('id', id);
    } catch (e) {
      throw Exception('Delete Error: $e');
    }
  }
}
