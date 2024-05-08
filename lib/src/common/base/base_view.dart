import 'package:flutter/material.dart';

import '../resources/colors.dart';
import 'index.dart';

abstract class ILifecycleCallback<VM> {
  @protected
  void onInit(VM viewModel) {}

  @protected
  void onDispose(VM viewModel) {}
}

abstract class BaseView<T extends BaseViewModel> extends StatefulWidget {
  const BaseView({super.key, this.backgroundColor});

  Widget builder(BuildContext context, T model, Widget? child);

  T viewModelFactory();

  final Color? backgroundColor;

  Widget? child(BuildContext context) => null;

  Widget? bottomNavigationBar(BuildContext context) => null;

  @override
  BaseViewState<T> createState() => BaseViewState<T>();
}

class BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  late final T _model;

  @override
  void initState() {
    _model = widget.viewModelFactory();
    super.initState();
    _model.onInit(context);
  }

  @override
  void dispose() {
    super.dispose();
    _model.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor ?? AppColors.White,
      body: SafeArea(
        child: AnimatedBuilder(
          animation: _model,
          builder: (context, child) => widget.builder(context, _model, child),
          child: widget.child(context),
        ),
      ),
      bottomNavigationBar: widget.bottomNavigationBar(context),
    );
  }
}
