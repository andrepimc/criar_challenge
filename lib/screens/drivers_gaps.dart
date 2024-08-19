import 'package:criar_challenge/screens/widgets/table_cell_widget.dart';
import 'package:criar_challenge/shared/models/kart_driver_race.dart';
import 'package:criar_challenge/shared/utils/sizes/table_column_widths.dart';
import 'package:criar_challenge/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DriversGaps extends StatefulWidget {
  final List<KartDriverRace> raceDriversData;
  const DriversGaps({super.key, required this.raceDriversData});

  @override
  State<DriversGaps> createState() => _DriversGapsState();
}

class _DriversGapsState extends State<DriversGaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Lacunas (Gaps)"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
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
                        label: "Gap",
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
                      weakLabel: data.timeAfterWinner == "NCP",
                      label: data.timeAfterWinner,
                    ),
                  ]);
                })
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Container(
                          height: 8,
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      Text(
                        "Legenda",
                        style: AppTextStyles.screenLabel,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text("NCP: ", style: AppTextStyles.thinScreenLabel),
                      Text("NÃO COMPLETOU A PROVA",
                          style: AppTextStyles.thinScreenLabel)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
