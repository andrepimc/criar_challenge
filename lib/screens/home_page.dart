import 'package:criar_challenge/screens/controllers/home_controller.dart';
import 'package:criar_challenge/screens/drivers_average_speed_page.dart';
import 'package:criar_challenge/screens/drivers_bests_lap_page.dart';
import 'package:criar_challenge/screens/drivers_gaps.dart';
import 'package:criar_challenge/screens/widgets/button_widget.dart';
import 'package:criar_challenge/screens/widgets/table_cell_widget.dart';
import 'package:criar_challenge/shared/utils/sizes/table_column_widths.dart';
import 'package:criar_challenge/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = HomeController();

  @override
  void initState() {
    homeController.addListener(() {
      setState(() {});
    });
    homeController.fetchKartRaceInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Grupo CRIAR - DESAFIO",
          style: AppTextStyles.appBarTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.grey),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: TableColumnWidths.biggestTable,
              children: [
                const TableRow(
                    decoration: BoxDecoration(color: Colors.deepOrange),
                    children: [
                      TableCellWidget(
                        isTitle: true,
                        label: "Posição",
                      ),
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
                        label: "N° Voltas",
                      ),
                      TableCellWidget(
                        isTitle: true,
                        label: "Tempo",
                      ),
                    ]),
                ...List.generate(homeController.raceDriversData.length,
                    (index) {
                  final data = homeController.raceDriversData[index];
                  return TableRow(children: [
                    TableCellWidget(
                      label: "${data.finalPosition.toString()}°",
                    ),
                    TableCellWidget(
                      label: data.driver.id.toString().padLeft(3, "0"),
                    ),
                    TableCellWidget(
                      label: data.driver.name,
                    ),
                    TableCellWidget(
                      label: data.numberOfLaps.toString(),
                    ),
                    TableCellWidget(
                      label: data.totalTime,
                    ),
                  ]);
                })
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Divider(),
            ),
            ButtonWidget(
              loading: homeController.buttonsLoader[0],
              label: "Melhores voltas",
              onTap: () {
                homeController.changeButtonLoader(0);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DriversBestsLapPage(
                              raceDriversData: homeController.raceDriversData,
                            )));
                homeController.changeButtonLoader(0);
              },
            ),
            ButtonWidget(
              loading: homeController.buttonsLoader[1],
              label: "Velocidades médias",
              onTap: () {
                homeController.changeButtonLoader(1);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DriversAverageSpeedPage(
                              raceDriversData: homeController.raceDriversData,
                            )));
                homeController.changeButtonLoader(1);
              },
            ),
            ButtonWidget(
              loading: homeController.buttonsLoader[2],
              label: "Lacunas (Gaps)",
              onTap: () {
                homeController.changeButtonLoader(2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DriversGaps(
                              raceDriversData: homeController.raceDriversData,
                            )));
                homeController.changeButtonLoader(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
