// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cupertino_app/cupertino/data/app_state.dart';
import 'package:cupertino_app/cupertino/data/preferrence.dart';
import 'package:cupertino_app/cupertino/data/vaggies.dart';
import 'package:cupertino_app/cupertino/styles.dart';
import 'package:cupertino_app/cupertino/widgets/vaggies_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:scoped_model/scoped_model.dart';

class ListScreen extends StatelessWidget {
  List<Widget> _generateVeggieRows(
      List<Veggie> veggies,
      Preferences prefs,
      { bool inSeason = true }
      ) {
    final cards = List<Widget>();

    for (Veggie veggie in veggies) {
      cards.add(Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
        child: FutureBuilder<Set<VeggieCategory>>(
            future: prefs.preferredCategories,
            builder: (context, snapshot) {
              final data = snapshot.data ?? Set<VeggieCategory>();
              return VeggieCard(veggie, inSeason, data.contains(veggie.category));
            }),
      ));
    }

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        String dateString = DateFormat("MMMM y").format(DateTime.now());
        final appState =
        ScopedModel.of<AppState>(context, rebuildOnChange: true);
        final prefs =
        ScopedModel.of<Preferences>(context, rebuildOnChange: true);

        final rows = <Widget>[];

        rows.add(
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dateString.toUpperCase(), style: Styles.minorText),
                Text('In season today', style: Styles.headlineText),
              ],
            ),
          ),
        );

        rows.addAll(_generateVeggieRows(appState.availableVeggies, prefs));

        rows.add(
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 16.0),
            child: Text('Not in season', style: Styles.headlineText),
          ),
        );

        rows.addAll(_generateVeggieRows(appState.unavailableVeggies, prefs, inSeason: false));

        return DecoratedBox(
          decoration: BoxDecoration(color: Color(0xffffffff)),
          child: ListView(
            children: rows,
          ),
        );
      },
    );
  }
}