class AppConstants {
  static const name = "ntim.dev";
  static const primaryFont = "NeueMachina";
  static const poppinsFont = "Poppins";
  static const satoshiFont = "Satoshi";
}

const double displayLargeWeb = 75;
const double displayLargeMobile = 40;
const double headlineLargeWeb = 70;
const double headlineLargeMobile = 32;
const double headlineMediumWeb = 65;
const double headlineMediumMobile = 28;
const double titleLargeWeb = 50;
const double titleLargeMobile = 24;
const double bodyLargeWeb = 16;
const double bodyLargeMobile = 16;
const double bodyMediumWeb = 14;
const double bodyMediumMobile = 14;

class AppImages {
  static const portfolioImage = "assets/images/portfolio_image.jpg";
  static const waCommImage = "assets/images/project_wacomm.png";
  static const adsPoolImage = "assets/images/project_ads_pools.jpg";
  static const medentImage = "assets/images/project_medent.jpg";
  static const smartTicketImage = "assets/images/project_smart_ticket.jpg";
  static const icDropdown = "assets/images/dropdown.svg";
}

class DummyData {
  static const companies = [
    'BroadSpectrum',
    'Walulel',
    'Interactive Edge',
    'MeDent',
    'ADs Pool',
    '3+ others',
  ];

  static const projects = [
    {
      'title': 'WaCommunicate Mobile',
      'image': AppImages.waCommImage,
      'desc': AppString.waCommDescription,
      'links': {
        'android': AppString.waCommAdminAndroidLink,
        'ios': AppString.waCommAdminIosLink,
      }
    },
    {
      'title': 'MeDent Mobile',
      'image': AppImages.medentImage,
      'desc': AppString.meDentDescription,
      'links': {
        'android': AppString.meDentLink,
      },
    },
    {
      'title': 'Ads Pools',
      'image': AppImages.adsPoolImage,
      'desc': AppString.adsPoolsDescription,
      'links': {
        'android': AppString.adsPoolsLink,
      },
    },
    {
      'title': 'Smart Ticket',
      'image': AppImages.smartTicketImage,
      'desc': AppString.smartTicketDescription,
      'links': {
        'android': AppString.smartTicketLink,
      },
    },
  ];

  static const socialLinks = [
    {'provider': 'Email', 'link': AppString.emailLink},
    //{'provider': 'Website', 'link': 'http://www.ntim.dev'},
    {'provider': 'Twitter', 'link': AppString.twitterLink},
    {'provider': 'LinkedIn', 'link': AppString.linkedInLink},
  ];
}

class AppString {
  static const name = 'Kwaku Owusu-Ansa';
  static String jobTitle = 'Mobile Engineer \nbased in Accra,\nGhana';

  static String professionalDesc = 'With over 4 years experience in building'
      ' digital products that users love and cherish, I have worked mostly with '
      'startups in Prop tech, Agri-tech, Emergency, Fin-tech, Social Media & Entertainment.';

  static String professionalDescCont = 'I love to translate designs into clean, '
      'elegant, functional and responsive User Interfaces. I have industry '
      'experience building websites and web applications using Flutter, Android, '
      'iOS and Firebase and quite recently Go.';

  static const welcomeName = "Hello,\nI'm Kwaku\nNtim";
  static const welcomeDesc =
      "I design and build beautiful mobile, desktop & web apps & experiences";
  static const portfolio = "PORTFOLIO";
  static const contactMe = 'contact me';
  static const resume = "RESUME";

  static String contactTitle = 'Get in\ntouch.';
  static String contactDesc = "Thanks in advance for reaching out! Please note "
      "that the contact form is for work only. If you just want to say hello, "
      "then hit me up on any of my social media handles.";
  static const String emailLink = 'kwaku315@gmail.com';
  static String twitter = 'Twitter';
  static const String twitterLink = 'http://www.twitter.com/ntim_cx';
  static const String resumeLink =
      'https://docs.google.com/document/d/1eCugIMGUMBd1I2bLlMxqtnyJnevGnFd3Iafm1FxGRFU/edit?usp=sharing';
  static String linkedIN = 'LinkedIn';
  static const String linkedInLink =
      'https://www.linkedin.com/in/kwaku-owusu-ansa/';
  static String contactName = 'Name';
  static String contactEmail = 'Email Address';
  static String contactProjectDesc = 'Tell me about your project';
  static String websiteIncompleteTitle = 'Hi 👋🙈';
  static String websiteIncompleteDecs =
      "Thank you for visiting my portfolio website. Please note that it is "
      "currently under construction so I'd like to apologize in advance for any "
      "inconvenience you may have to deal with.\nThank you 😊";

  static const String meDentLink =
      'https://play.google.com/store/apps/details?id=com.iegh.row1&hl=en&gl=US';
  static const String waCommAdminAndroidLink =
      'https://play.google.com/store/apps/details?id=com.wacommunicate.pro';
  static const String waCommAdminIosLink =
      'https://apps.apple.com/gh/app/wacommunicate-admin/id1527069571';
  static const String waCommFreeAndroidLink =
      'https://play.google.com/store/apps/details?id=com.wacommunicate.gratis';
  static const String waCommFreeIosLink =
      'https://apps.apple.com/lt/app/wacommunicate-cityzen/id1527069282';
  static const String smartTicketLink =
      'https://play.google.com/store/apps/details?id=com.ie.smartticket&hl=en&gl=US';
  static const String adsPoolsLink =
      'https://play.google.com/store/apps/details?id=com.iegh.ads_pool&hl=en&gl=US';

  static const String waCommDescription =
      'The Geo-social property management app that connects property owners and their tenants';
  static const String meDentDescription =
      'A handy and useful app that enables users learn and prepare for clinical examination and skills on the go';
  static const String adsPoolsDescription =
      'Reward driven advertising platform that allows users view ads and earn rewards';
  static const String smartTicketDescription =
      'Event app that brings people together through live experiences. Discover events that match your passions.';
}

class Api {
  static const meDentLink = "";
}
