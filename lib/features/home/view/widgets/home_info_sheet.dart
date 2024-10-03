import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/features/home/view/widgets/widgets.dart';
import 'package:domi_track/providers/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeInfoSheet extends StatefulWidget {
  const HomeInfoSheet({
    super.key,
  });

  @override
  State<HomeInfoSheet> createState() => _HomeInfoSheetState();
}

class _HomeInfoSheetState extends State<HomeInfoSheet> {
  final DraggableScrollableController sheetController =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    final selectedMapData = context.watch<AppState>().getSelectedMapIdData;

    return DraggableScrollableSheet(
      shouldCloseOnMinExtent: true,
      controller: sheetController,
      initialChildSize: .4,
      maxChildSize: 1,
      minChildSize: .2,
      builder: (context, scrollController) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  sheetController.jumpTo(
                    sheetController.size -
                        (details.primaryDelta! / context.size!.height),
                  );
                },
                child: SizedBox(
                  height: 30,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 4,
                      width: 100,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: SheetSectionHeader(
                          title: "${selectedMapData.title} Images",
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      ImageCarouselView(selectedMapData: selectedMapData),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: SheetSectionHeader(
                          title: "${selectedMapData.title} Docs",
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: SearchBar(
                          backgroundColor:
                              WidgetStateProperty.all(AppColors.offBlack),
                          hintText: "Search docs",
                          textStyle: WidgetStateProperty.all(TextStyle(
                            color: AppColors.white,
                          )),
                          hintStyle: WidgetStateProperty.all(TextStyle(
                            color: AppColors.offWhite,
                          )),
                        ),
                      ),
                      DocsListView(selectedMapData: selectedMapData),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
