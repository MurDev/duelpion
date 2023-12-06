import 'package:duelpion/src/utils/constants/colors.dart';
import 'package:duelpion/src/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(CImages.bgImgMobile), fit: BoxFit.cover),
        ),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.sizeOf(context).width,
                      minHeight: MediaQuery.sizeOf(context).height * 0.55,
                      maxWidth: MediaQuery.sizeOf(context).width,
                      maxHeight: MediaQuery.sizeOf(context).height * 0.55,
                    ),
                    decoration: BoxDecoration(
                      // color: CColors.light,
                      image: const DecorationImage(
                          image: AssetImage(CImages.introCardMobile),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF3A86FF),
                        width: 4,
                      ),
                    ),
                  ),
                ),
                Flexible(
                    child: Align(
                  alignment: const AlignmentDirectional(0.00, 1.00),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 0,
                          runSpacing: 10,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              "Compete with other player",
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(fontWeight: FontWeight.w900, color: Colors.white),
                            ),
                            Text(
                              "Participe in tournament by playing real online match against other players to win prizes",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.normal, color: Colors.white70),
                            )
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize:
                                Size(MediaQuery.sizeOf(context).width, 60),
                            side: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: const Color(0xFF3A86FF),
                            elevation: 5,
                          ),
                          onPressed: () {},
                          child: const Text("Ready"),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
