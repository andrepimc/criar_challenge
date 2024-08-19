import 'package:criar_challenge/screens/widgets/table_cell_widget.dart';
import 'package:criar_challenge/shared/models/kart_driver_race.dart';
import 'package:criar_challenge/shared/utils/sizes/table_column_widths.dart';
import 'package:flutter/material.dart';

class DriversAverageSpeedPage extends StatefulWidget {
  final List<KartDriverRace> raceDriversData;
  const DriversAverageSpeedPage({super.key, required this.raceDriversData});

  @override
  State<DriversAverageSpeedPage> createState() =>
      _DriversAverageSpeedPageState();
}

class _DriversAverageSpeedPageState extends State<DriversAverageSpeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Velocidades médias"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Table(
          border: TableBorder.all(color: Colors.grey),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: TableColumnWidths.smallestTable,
          children: [
            const TableRow(
                decoration: BoxDecoration(color: Colors.deepOrange),
                children: [
                  TableCellWidget(
                    isTitle: true,
                    label: "Código",
                  ),
                  TableCellWidget(
                    isTitle: true,
                    label: "Nome",
                  ),
                  TableCellWidget(
                    isTitle: true,
                    label: "Velocidade média",
                  ),
                ]),
            ...List.generate(widget.raceDriversData.length, (index) {
              final data = widget.raceDriversData[index];
              return TableRow(children: [
                TableCellWidget(
                  label: data.driver.id.toString().padLeft(3, "0"),
                ),
                TableCellWidget(
                  label: data.driver.name,
                ),
                TableCellWidget(
                  label: data.averageSpeed.toString(),
                ),
              ]);
            })
          ],
        ),
      ),
    );
  }
}
