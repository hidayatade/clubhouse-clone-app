import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_app/config/pallete.dart';

import 'package:flutter_clubhouse_app/data.dart';

class UpcomonigRooms extends StatelessWidget {
  final List<Room> upcomonigRooms;

  const UpcomonigRooms({
    Key? key,
    required this.upcomonigRooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, top: 4.0, bottom: 4.0),
        child: Column(
          children: upcomonigRooms
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: e.club.isNotEmpty ? 2.0 : 0),
                          child: Text(e.time),
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (e.club.isNotEmpty)
                                Flexible(
                                  child: Text(
                                    '${e.club} 🏡'.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .overline!
                                        .copyWith(
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.0,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              Flexible(
                                child: Text(e.name,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
