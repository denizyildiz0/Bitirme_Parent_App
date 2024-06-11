import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Uygulama için veri depolama işlemlerini yöneten sınıf
class Storage {
  // Uygulama ilk açıldığında yapılacak işlemleri yöneten fonksiyon
  Future<bool> isFirstLaunch() async {
    // SharedPreferences nesnesi oluşturulur
    final SharedPreferences storage = await SharedPreferences.getInstance();

    // Uygulama ilk açıldığında "runned" anahtarına sahip bir değer var mı kontrol edilir
    final runned = storage.getBool("runned");

    // Uygulama ilk açıldığında "launchCount" anahtarına sahip bir değer var mı kontrol edilir
    var counter = storage.getInt("launchCount");

    // Eğer "runned" anahtarı yoksa, uygulama ilk açıldığındır ve "launchCount" anahtarına 1 değeri atanır
    if (runned == null) {
      counter = 1;
      await storage.setInt("launchCount", 1);
      return true;
    } else {
      // Eğer "runned" anahtarı varsa, uygulama önceki bir kez açıldı ve "launchCount" anahtarına 1 artırılır
      counter ??= 0;
      await storage.setInt("launchCount", counter + 1);
      return false;
    }
  }

  // Uygulama ilk açıldığında "runned" anahtarına true değeri atanan fonksiyon
  firstLaunched() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.setBool("runned", true);
  }

  // Uygulama verilerini temizlemek için kullanılan fonksiyon
  clearStorage() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.clear();
  }
}