import 'package:auto_control_panel/providers/abast_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:savio_pk/savio_pk.dart';

import 'abast_list_tile.dart';

class AbastList extends StatelessWidget {
  const AbastList({super.key});

  @override
  Widget build(BuildContext context) {
    final abastProvider = context.watch<AbastProvider>();
    final List<Abastecimento>? listaAbast = abastProvider.abastecimentos;

    return ListView.builder(
      itemCount: listaAbast?.length,
      itemBuilder: (context, index) {
        Abastecimento abast = listaAbast![index];
        return AbastListTile(abast);
      },
    );
  }
}
