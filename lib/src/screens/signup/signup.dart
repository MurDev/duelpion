import 'package:duelpion/src/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create a profile',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      spacing: 10,
                      runSpacing: 0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.vertical,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.42,
                          height: MediaQuery.sizeOf(context).height * 0.2,
                          decoration: BoxDecoration(
                            color: CColors.lightGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Text(
                          'Male',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.vertical,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.42,
                          height: MediaQuery.sizeOf(context).height * 0.2,
                          decoration: BoxDecoration(
                            color: CColors.lightGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Text(
                          'Female',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Wrap(
                spacing: 0,
                runSpacing: 20,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Text(
                    'Choose an unique username. It will be visible by other players.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextFormField(
                    // controller: _model.textController,
                    // focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintStyle: Theme.of(context).textTheme.labelMedium,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: CColors.darkerGrey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: CColors.borderPrimary,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: CColors.error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: CColors.error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: CColors.lightGrey,
                      prefixIcon: const Icon(
                        Icons.person_sharp,
                      ),
                    ),
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                    // validator: _model.textControllerValidator.asValidator(context),
                  ),
                  Text(
                    'Must be at least 4 characters',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.00, 1.00),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
                      side: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: CColors.dark,
                      elevation: 3,
                    ),
                    onPressed: () {},
                    child: const Text("Get Started"),
                  ),
                ),
              )
            ],
          ),
        )
    ),
    );

  }
}
