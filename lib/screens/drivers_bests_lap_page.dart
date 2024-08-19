import 'package:criar_challenge/shared/utils/sizes/table_column_widths.dart';
import 'package:criar_challenge/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:criar_challenge/screens/widgets/table_cell_widget.dart';
import 'package:criar_challenge/shared/models/kart_driver_race.dart';

class DriversBestsLapPage extends StatefulWidget {
  final List<KartDriverRace> raceDriversData;
  const DriversBestsLapPage({
    super.key,
    required this.raceDriversData,
  });

  @override
  State<DriversBestsLapPage> createState() => _DriversBestsLapPageState();
}

class _DriversBestsLapPageState extends State<DriversBestsLapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Melhores voltas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Row(
                children: [
                  Container(
                    height: 8,
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      "Melhor volta da corrida",
                      style: AppTextStyles.screenLabel,
                    ),
                  )
                ],
              ),
            ),
            Table(
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
                        label: "Tempo",
                      ),
                    ]),
                ...List.generate(1, (index) {
                  final data = widget.raceDriversData.first;
                  return TableRow(children: [
                    TableCellWidget(
                      label: data.driver.id.toString().padLeft(3, "0"),
                    ),
                    TableCellWidget(
                      label: data.driver.name,
                    ),
                    TableCellWidget(
                      label: data.bestLapTime,
                    ),
                  ]);
                })
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 4.0),
              child: Row(
                children: [
                  Container(
                    height: 8,
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text("Respectivas melhores voltas",
                        style: AppTextStyles.screenLabel),
                  )
                ],
              ),
            ),
            Table(
              border: TableBorder.all(color: Colors.grey),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1.75),
                2: FlexColumnWidth(2),
              },
              children: [
                ...List.generate(widget.raceDriversData.length - 1, (index) {
                  final List<KartDriverRace> newList = widget.raceDriversData
                      .sublist(1, widget.raceDriversData.length);
                  final data = newList[index];
                  return TableRow(children: [
                    TableCellWidget(
                      label: data.driver.id.toString().padLeft(3, "0"),
                    ),
                    TableCellWidget(
                      label: data.driver.name,
                    ),
                    TableCellWidget(
                      label: data.bestLapTime,
                    ),
                  ]);
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
