import 'package:flutter/material.dart';
import 'package:kutuku/features/products/views/widgets/home_view_body.dart';
class HomeProductsView extends StatelessWidget {
  const HomeProductsView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeProductsViewBody()),
    );
  }
}
