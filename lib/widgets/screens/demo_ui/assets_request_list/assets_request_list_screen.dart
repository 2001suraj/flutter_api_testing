import 'package:flutter/material.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/assets_request_list/components/individual_assets_request_container.dart';

class AssetsRequestListScreen extends StatelessWidget {
  AssetsRequestListScreen({super.key});
  final List<String> dropdowndateList = [
    '01-Jan-2021 to 30-Apr-2021',
    '01-Jan-2021 to 30-Apr-2021'
  ];

  final List<String> shortByList = ['Time', 'Type', 'Size'];
  List<String> chipList = ['Pending', 'Not Approved', 'Approved'];
  List<String> date = [
    '15-Jan-2021',
    '01-Feb-2021',
    '15-Jan-2021',
    '01-Feb-2021',
    '15-Jan-2021',
    '01-Feb-2021',
    '15-Jan-2021',
    '01-Feb-2021',
    '15-Jan-2021',
    '01-Feb-2021',
    '15-Jan-2021',
    '01-Feb-2021',
  ];
  List<String> image = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/1.jpg',
  ];

  String? selectdate;
  String? selectShortBy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        backgroundColor: const Color.fromARGB(255, 41, 2, 55),
        title: const Text('Asset Request List'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 228, 235, 221),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          primary: true,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(color: Colors.grey),
                            right: BorderSide(color: Colors.grey)),
                      ),
                      child: DropdownButtonFormField(
                        isExpanded: true,
                        value: selectdate,
                        items: dropdowndateList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                        decoration: const InputDecoration(
                            hintText: '01-Jan-2021 to 30-Apr-2021',
                            hintStyle: TextStyle(fontSize: 14),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: DropdownButtonFormField(
                        isExpanded: true,
                        value: selectShortBy,
                        items: shortByList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                        decoration: const InputDecoration(
                            hintText: 'Sort By',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              //chip view
              Container(
                margin: const EdgeInsets.only(left: 20, bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: chipList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Chip(
                        label: Text(
                          chipList[index],
                        ),
                        backgroundColor:
                            index == 0 ? Colors.green[400] : Colors.white,
                        elevation: 4,
                        shadowColor: Colors.black,
                        labelStyle: TextStyle(
                            color: index == 0 ? Colors.white : Colors.black),
                        padding: const EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: date.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return IntrinsicHeight(
                        child: Row(
                          children: [
                            //vertical divider
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1.5),
                                    child: VerticalDivider(
                                      color: Colors.green[400],
                                      thickness: 1,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.green[400],
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          color: Colors.green[400]),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //date
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  date[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                IndividualAssetRequestListContainer(
                                  image: image[index],
                                  name: 'Elizabeth James',
                                  assetType: 'Vehicle',
                                  assetName: 'Scooty',
                                  quantity: '1',
                                  remarks: 'Some Text',
                                ),
                                IndividualAssetRequestListContainer(
                                  image: image[index + 1],
                                  name: 'MArilyn Valdez ',
                                  assetType: 'Stationery',
                                  assetName: 'Chalk',
                                  quantity: '1',
                                  remarks: 'Some Text',
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ))
                ],
              ),
            ],
          )),
    );
  }
}
