import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/models/social_link.dart';
import 'package:portfolio_webapp/shared_widgets/custom_button.widget.dart';
import 'package:portfolio_webapp/shared_widgets/custom_dropdown.dart';
import 'package:portfolio_webapp/shared_widgets/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeModal extends StatefulWidget {
  const ContactMeModal({Key key}) : super(key: key);

  @override
  State<ContactMeModal> createState() => _ContactMeModalState();
}

class _ContactMeModalState extends State<ContactMeModal> {
  String selectedInterest;
  String selectedPlatform;

  @override
  Widget build(BuildContext context) {
    bool isMobile = isDeviceMobile(context: context);
    bool isTablet = isDeviceTablet(context: context);

    final title = Text(
      AppString.contactTitle,
      style: primaryTextTheme.titleLarge.copyWith(
          color: Colors.black,
          fontSize: isMobile ? titleLargeMobile : titleLargeWeb),
    );

    final desc = Container(
        width: isMobile ? 200 : 400,
        padding: isMobile ? EdgeInsets.zero : EdgeInsets.all(30),
        child: Text(
          AppString.contactDesc,
          style: primaryTextTheme.bodyMedium.copyWith(
              color: Color(0XFF696969),
              fontSize: isMobile ? 12 : bodyMediumWeb),
        ));

    final closeButton = SizedBox(
      width: 30,
      height: 30,
      child: MaterialButton(
        onPressed: () => Navigator.pop(context),
        color: Colors.black,
        child: const Icon(
          Icons.close,
          size: 12,
          color: Colors.white,
        ),
      ),
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
      maxLines: isMobile ? 4 : 8,
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
          onTap: () {
            if(link.link.contains('@')){
              launch(
                  Uri(scheme: 'mailto', path: AppString.emailLink)
                      .toString());
            }else{
              launch(link.link,
                  forceWebView: true, forceSafariVC: true);
            }
          },
            child: Text(
          link.provider,
          style: primaryTextTheme.titleLarge
              .copyWith(color: Colors.black, fontSize: isMobile ? 18 : 36),
        ));
      }).toList(),
    );

    final contactInterests = CustomDropdown(
      initalValue: selectedInterest,
      list: const [
        {'name': 'Consultation'},
        {'name': 'General inquiry'},
        {'name': 'Work'},
        {'name': 'Web projects'},
      ],
      onChanged: (value) {
        setState(() {
          selectedInterest = value;
        });
      },
      itemValue: 'name',
      itemLabel: 'name',
      hint: 'Im interested in ...',
      selectedValue: selectedInterest,
    );

    final contactPlatform = CustomDropdown(
      list: const [
        {'name':'Mobile'},
        {'name':'Web'},
        {'name':'Backend'},
        {'name': 'Fullstack'},
        {'name':'Not sure yet 🙈'},
      ],
      itemValue: 'name',
      itemLabel: 'name',
      initalValue: selectedPlatform,
      selectedValue: selectedPlatform,
      onChanged: (value) {
        setState(() {
          selectedPlatform = value;
        });
      },
      hint: 'Related platform',
    );

    final button = CustomButton(
      text: 'Send message',
      onPressed: () {},
    );

    final contactFormWeb = Row(
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
            contactPlatform
          ],
        )),
        Utils.horizontalSpacer(),
        Flexible(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [projectDesc, Utils.verticalSpacer(space: 5), button],
        )),
      ],
    );

    final contactFormMobile = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        name,
        email,
        Utils.verticalSpacer(space: 12),
        contactInterests,
        Utils.verticalSpacer(),
        contactPlatform,
        Utils.verticalSpacer(space: 16),
        projectDesc,
        Utils.verticalSpacer(space: 16),
        button
      ],
    );

    return Container(
      alignment: Alignment.center,
      padding: isMobile ? EdgeInsets.all(20) : EdgeInsets.all(36),
      child: ListView(
        children: [
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
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Utils.verticalSpacer(),
          socialLinks,
          Utils.verticalSpacer(),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Utils.verticalSpacer(),
          isMobile ? contactFormMobile : contactFormWeb
        ],
      ),
    );
  }
}
