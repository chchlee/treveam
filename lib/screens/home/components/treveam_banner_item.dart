import 'package:flutter/material.dart';
import 'package:treveam/screens/home/components/box_border_text.dart';
import 'package:treveam/screens/home/components/number_indicator.dart';

class TreveamBannerItem extends StatefulWidget {
  const TreveamBannerItem({ Key? key }) : super(key: key);

  @override
  State<TreveamBannerItem> createState() => _TreveamBannerItemState();
}

class _TreveamBannerItemState extends State<TreveamBannerItem> {
  final List<HomeBanner> list = homeBannerList;
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children : [
        PageView().builder(
          itemCount : list.length,
          itemBuilder : (conetxt, length){
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(list[index].bannerImage),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 16,
                  child: BoxBorderText(
                    title: list[index].eventTitle,
                    subTitle: list[index].eventContent,
                  ),
                )
              ],
            );
          },
          onPageChanged: (value){
            setState(() {
              currentPage = value;
            });
          },
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: NumberIndicator(
            currentPage: currentPage + 1,
            length: list.length,
          ),
        )
      ]
    );
  }
}