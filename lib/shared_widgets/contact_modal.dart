import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/models/social_link.dart';
import 'package:portfolio_webapp/shared_widgets/custom_button.widget.dart';
import 'package:portfolio_webapp/shared_widgets/custom_dropdown.dart';
import 'package:portfolio_webapp/shared_widgets/custom_text_field.dart';

class ContactMeModal extends StatefulWidget {
  const ContactMeModal({Key key}) : super(key: key);

  @override
  State<ContactMeModal> createState() => _ContactMeModalState();
}

class _ContactMeModalState extends State<ContactMeModal> {
  String selectedInterest;
  String selectedBudget;

  @override
  Widget build(BuildContext context) {
    final title = Text(
      AppString.contactTitle,
      style: primaryTextTheme.displayLarge.copyWith(color: Colors.black),
    );

    final desc = Container(
        width: 400,
        child: Text(
          AppString.contactDesc,
          style: primaryTextTheme.bodyLarge.copyWith(color: Color(0XFF696969)),
        ));

    final closeButton = ElevatedButton(
      onPressed: () {},
      child: Icon(
        Icons.close,
        color: Colors.white,
      ),
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(50, 50)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder()),
          //padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20)),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          // <-- Button color
          overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.pressed))
              return Colors.grey; // <-- Splash color
          })),
    );

    final name = CustomTextField(
      hintText: AppString.contactName,
      validator: (value) {
        if (value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    );

    final email = CustomTextField(
      hintText: AppString.contactEmail,
      validator: (value) {
        if (value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    );

    final projectDesc = CustomTextField(
      hintText: AppString.contactProjectDesc,
      maxLines: 8,
      validator: (value) {
        if (value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    );

    final socialLinks = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: DummyData.socialLinks.map((e) {
        SocialLink link = SocialLink.fromJson(e);
        return InkWell(
            child: Text(
          link.provider,
          style: primaryTextTheme.titleLarge.copyWith(color: Colors.black),
        ));
      }).toList(),
    );

    final contactInterests = CustomDropdown(
      initalValue: selectedInterest,
      list: [],
      onChanged: (value) {
        setState(() {
          selectedInterest = value;
        });
      },
      itemValue: 'name',
      itemLabel: 'name',
      hint: 'Select interest',
      selectedValue: selectedInterest,
    );

    final contactBudget = CustomDropdown(
      list: [],
      itemValue: 'name',
      itemLabel: 'name',
      initalValue: selectedBudget,
      selectedValue: selectedBudget,
      onChanged: (value) {
        setState(() {
          selectedBudget = value;
        });
      },
      hint: 'Select budget',
    );

    final button = CustomButton(
      text: 'Send message',
      onPressed: () {},
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Utils.verticalSpacer(space: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [closeButton, Utils.verticalSpacer(space: 40), desc],
              )
            ],
          ),
          Utils.verticalSpacer(),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Utils.verticalSpacer(),
          socialLinks,
          Utils.verticalSpacer(),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Utils.verticalSpacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  name,
                  email,
                  Utils.verticalSpacer(space: 10),
                  contactInterests,
                  Utils.verticalSpacer(),
                  contactBudget
                ],
              )),
              Utils.horizontalSpacer(),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [projectDesc, Utils.verticalSpacer(space: 5), button],
              )),
            ],
          )
        ],
      ),
    );
  }
}
