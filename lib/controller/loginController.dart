import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube/modal/login_model.dart';
import '../routes/app_routes.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  Future<void> loginUser() async {
    isLoading.value = true;

    try {
      final response = await http.post(
        Uri.parse("https://krushimahostav.yuvapsvs.com/api/auth/login"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "email": emailCtrl.text.trim(),
          "password": passwordCtrl.text.trim(),
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final loginData = LoginResponse.fromJson(data);

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', loginData.token ?? "");
        await prefs.setString('userName', loginData.user?.name ?? "");
        await prefs.setString('userEmail', loginData.user?.email ?? "");

        Get.snackbar(
          "Success",
          loginData.message ?? "Login successful",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );

        Get.offNamed(AppRoutes.tabs);
      } else {
        final error = jsonDecode(response.body);
        Get.snackbar(
          "Login Failed",
          error['message'] ?? 'Invalid credentials',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "Something went wrong: ${e.toString()}",
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }
}

// This is a test edit to create a new Git commit.
