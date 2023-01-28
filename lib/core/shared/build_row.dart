import 'package:flutter/cupertino.dart';
import 'package:training/core/utils/colors.dart';
import 'package:training/core/utils/tesxts.dart';

class RowOfLeadingAndDropDown extends StatelessWidget {
  final String leading;
  final Widget child;

  RowOfLeadingAndDropDown({super.key, required this.leading, required this.child});
  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.22,
            child: AppText(
              text: leading,
              textColor: blackColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
//          SizedBox(width:screenWidth*.1 ,)
          child
        ],
      ),
    );
  }
  }

