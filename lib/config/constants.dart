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
  static const waCommImage = "assets/images/wacomm_img.png";
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

  static String professionalDesc = 'With over 3 years experience in building'
      ' digital products that users love and cherish, I have worked mostly with '
      'startups in Food tech, Agri-tech, Health, Fin-tech, Social Media & Education.';

  static String professionalDescCont = 'I am the founder of UX Campus: An Non '
      'Profit that seeks to inspire people to fall in love with UX Design, by '
      'organising free 1-2 day workshops across Ghana.';

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
  static String websiteIncompleteDecs = "Thank you for visiting my portfolio website. Please note that it is "
      "currently under construction so I'd like to apologize in advance for any "
      "inconvenience you may have to deal with.\nThank you 😊";
}

class Api {
  static const meDentLink = "";
}
