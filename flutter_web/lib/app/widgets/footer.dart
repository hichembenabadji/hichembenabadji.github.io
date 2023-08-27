import 'package:flutter/material.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/core/util/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return 
    
       Responsive(
                    desktop: _defaultBackgroundImage(width, height, "assets/imgs/5424482.jpg"),
                    tablet: _defaultBackgroundImage(width, height, "assets/imgs/5424482.jpg"),
                    mobile: _defaultBackgroundImage(width, height, "assets/imgs/background_image_1000x750.jpg"),
                  ),
                  
                  Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Made with Flutter Web \u2665 by "),
            InkWell(
              onTap: () => openURL(gitHub),
              child: const Text(
                "Hichem Benabadji",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(" © 2023"),
          ],
        ),
      ),
    );
  }
}
