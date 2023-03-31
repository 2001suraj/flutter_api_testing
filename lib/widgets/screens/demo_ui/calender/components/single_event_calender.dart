import 'package:flutter/material.dart';

class SingelEventContainer extends StatelessWidget {
  const SingelEventContainer({Key? key, required this.color})
      : super(
          key: key,
        );
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Colors.white),
      child: Center(
        child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red.withOpacity(0.1),
              radius: 25,
              child: Icon(
                Icons.calendar_month_sharp,
                color: color,
                size: 30,
              ),
            ),
            title: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //event title
                  const Text(
                    'Ghode Jatra - Public Holiday',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  //event date
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      'Date : 2079 Chaitra 7 ,',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //passed
                      Text(
                        'Passed',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // for class
                      Text(
                        'For Class : ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            trailing: Stack(
              children: [
                const SizedBox(
                  height: 40,
                  width: 30,
                ),
                Positioned(
                  top: 2,
                  right: 4,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: color,
                  ),
                ),
                const Positioned(
                  top: 10,
                  child: Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
