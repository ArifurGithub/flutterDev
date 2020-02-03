
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/bloc/player_listening_events.dart';
import 'package:flutter_with_bloc/bloc/player_listing_bloc.dart';
import 'package:flutter_with_bloc/models/nations.dart';

class HorizontalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        itemBuilder: buildItem,
        itemCount: nations.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget buildItem(context, index) {
    return InkWell(
      onTap: () {
        BlocProvider.of<PlayerListingBloc>(context)
            .dispatch(CountrySelectedEvent(nationModel: nations[index]));
      },
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(nations[index].imagePath),
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }

  Widget buildSeparator(context, index) {
    return VerticalDivider(
      width: 32.0,
      color: Colors.transparent,
    );
  }
}