import 'package:flutter/material.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/assets_request_list/components/custom_title_subtitle_column.dart';

class IndividualAssetRequestListContainer extends StatelessWidget {
  const IndividualAssetRequestListContainer(
      {Key? key,
      required this.assetName,
      required this.assetType,
      required this.image,
      required this.name,
      required this.quantity,
      required this.remarks})
      : super(key: key);
  final String image;
  final String name;
  final String assetType;
  final String assetName;
  final String quantity;
  final String remarks;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //image
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  image,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Designation',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.green[400],
                  )
                  //
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            customTitleSubtitleColumn(context,
                title: 'Asset Type', subtitle: assetType),
            customTitleSubtitleColumn(context,
                title: 'Name ', subtitle: assetName),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            customTitleSubtitleColumn(context,
                title: 'Quantity', subtitle: quantity),
            customTitleSubtitleColumn(context,
                title: 'Remarks ', subtitle: remarks),
          ],
        ),
      ]),
    );
  }
}