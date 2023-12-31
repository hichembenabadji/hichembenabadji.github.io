import 'package:flutter/material.dart';
import 'package:mysite/app/utils/contact_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nGet in Contact"),
          Space.y(1.w)!,
          const CustomSectionSubHeading(
            text: "To access my services, use the contact details below.",
          ),
          Space.y(2.w)!,
          Container(
            padding: EdgeInsets.all(size.width * 0.05).copyWith(bottom: 10),
            decoration: BoxDecoration(
              gradient: theme.contactCard,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [redColorShadow],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            contactHeadding,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Space.y(1.w)!,
                          Text(
                            contactSubHeadding,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Space.y(2.w)!,
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        openURL(contact);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(gradient: buttonGradi, borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Contact Me',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(color: Colors.white.withOpacity(0.2), height: 1),
                Space.y(2.w)!,
                Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 50,
                    children: contactUtils
                        .asMap()
                        .entries
                        .map(
                          (e) => IconButton(
                            icon: Image.network(
                              e.value.icon,
                              color: theme.textColor,
                            ),
                            onPressed: () => openURL(e.value.url),
                            highlightColor: Colors.white54,
                            iconSize: 21,
                          ),
                        )
                        .toList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
