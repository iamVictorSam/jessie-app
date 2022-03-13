import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RefillModel {
  String title;
  IconData icon;
  GestureTapCallback function;

  RefillModel(
      {required this.title, required this.icon, required this.function});
}

List refillItems = [
  RefillModel(
      title: 'Data\nSubscription',
      icon: Icons.satellite_alt_rounded,
      function: () {
        Get.to('');
      }),
  RefillModel(
      title: 'Airtime\nPurchase',
      icon: Icons.phone,
      function: () {
        Get.to('');
      }),
  RefillModel(
      title: 'Internet\nSubscription',
      icon: Icons.wifi_tethering_rounded,
      function: () {
        Get.to('');
      }),
  RefillModel(
      title: 'TV\nSubscription',
      icon: Icons.reset_tv_outlined,
      function: () {
        Get.to('');
      }),
  RefillModel(
      title: 'Electricity',
      icon: Icons.flash_on_outlined,
      function: () {
        Get.to('');
      }),
  RefillModel(
      title: 'Education',
      icon: Icons.menu_book,
      function: () {
        Get.to('');
      }),
];
