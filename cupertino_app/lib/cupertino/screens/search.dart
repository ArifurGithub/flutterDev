// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cupertino_app/cupertino/data/app_state.dart';
import 'package:cupertino_app/cupertino/data/vaggies.dart';
import 'package:cupertino_app/cupertino/styles.dart';
import 'package:cupertino_app/cupertino/widgets/search_bar.dart';
import 'package:cupertino_app/cupertino/widgets/vaggies_headlines.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  String terms = '';

  @override
  void initState() {
    super.initState();
    controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() => terms = controller.text);
  }

  Widget _createSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        controller: controller,
        focusNode: focusNode,
      ),
    );
  }

  Widget _buildSearchResults(List<Veggie> veggies) {
    if (veggies.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'No veggies matching your search terms were found.',
            style: Styles.headlineDescription,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: veggies.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
          child: VeggieHeadline(veggies[i]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<AppState>(context, rebuildOnChange: true);

    return CupertinoTabView(
      builder: (context) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Styles.scaffoldBackground,
          ),
          child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                _createSearchBox(),
                Expanded(
                  child: _buildSearchResults(model.searchVeggies(terms)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}