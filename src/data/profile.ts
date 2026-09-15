// All site content lives here. Edit this file to update the portfolio.

export const profile = {
  name: 'Kwaku Owusu-Ansa',
  role: 'Senior Mobile Engineer',
  tagline: 'I build fast, beautiful mobile apps — and the backends that power them.',
  location: 'Accra, Ghana',
  email: 'kwaku315@gmail.com',
  phone: '+233 20 904 7863', // shown on the résumé only
  linkedin: 'https://www.linkedin.com/in/kwaku-owusu-ansa',
  github: 'https://github.com/qwaiks',
  // Generated from src/pages/resume.astro — run `npm run resume` after editing.
  cv: '/Kwaku-Owusu-Ansa-Resume.pdf',
  // Paragraphs may contain <strong> for highlighted words.
  about: [
    'I’m a full-stack mobile engineer who loves turning ideas into products people enjoy using. For over <strong>5 years</strong> I’ve shipped apps with <strong>Flutter</strong>, native <strong>Android</strong> and <strong>iOS</strong>, and built the <strong>Node.js</strong> and <strong>Next.js</strong> services and in-house tooling behind them.',
    'Currently, I’m a Senior Mobile Engineer at <strong>StreamTV Group</strong>, where I build a Flutter app used by <strong>more than 20K daily active users</strong> — real-time live-stream interactions, sound alerts, text-to-speech and subscriptions — along with the Next.js platform and backend that power it.',
    'Along the way I’ve built software that reached <strong>over 1.5 million farmers</strong> in Ghana, helped health coaches in California support their clients, and connected building managers and tenants in London. I also enjoy mentoring junior engineers and building shared packages that make whole teams faster.',
  ],
};

export type Link = { label: string; href: string };

export const experience = [
  {
    period: '2025 — Present',
    role: 'Senior Mobile Engineer',
    company: 'StreamTV Group',
    location: 'Steyr, Austria',
    summary:
      'Build and maintain the Flutter iOS/Android app for TikTok LIVE creators, processing real-time events like gifts, follows and comments to drive sound alerts, text-to-speech and notifications. Develop the Next.js web platform and its backend — creator dashboards, API routes, authentication and integrations — and run subscription and monetisation infrastructure with RevenueCat and Superwall.',
    tags: ['Flutter', 'Next.js', 'Real-time events', 'RevenueCat', 'Superwall'],
  },
  {
    period: '2023 — 2025',
    role: 'Mobile Engineer',
    company: 'Ruvik Group',
    location: 'Alberta, Canada',
    summary:
      'Lead development of a multi-platform mobile and web app that lets users create, view and rate photos. Translate high-fidelity mockups into responsive code backed by functionality tests, and integrate payment gateways, behavioural tracking and analytics to drive monetisation and data-informed decisions.',
    tags: ['Flutter', 'Dart', 'Payments', 'Analytics', 'Testing'],
  },
  {
    period: '2022 — 2023',
    role: 'Software Engineer',
    company: 'Oben Health',
    location: 'California, USA',
    href: 'https://joinoben.com',
    summary:
      'Built a mobile solution helping users prevent and reverse adverse health conditions, plus a Flutter web dashboard for health coaches. Rebuilt the Node.js backend for smoother registration and onboarding, and created an in-house Flutter package used across the team.',
    tags: ['Flutter', 'Flutter Web', 'Node.js', 'REST APIs'],
  },
  {
    period: '2022 — 2023',
    role: 'Flutter Engineer',
    company: 'BroadSpectrum Digital Payments',
    location: 'Accra, Ghana',
    summary:
      'Led a farmer data collection and aggregation platform impacting over 1.5 million farmers, integrating produce collection with the government’s farmer subsidy programme. Maintained a widely used internal Flutter package and mentored junior engineers.',
    tags: ['Flutter', 'Dart', 'Mentorship'],
  },
  {
    period: '2021 — 2022',
    role: 'Lead Flutter Engineer',
    company: 'Walulel',
    location: 'London / Accra',
    summary:
      'Led development of the WaCommunicate admin and user apps for customers in Ghana and the UK. Authored UI and functionality tests, and owned deployment, publishing and versioning on the App Store and Google Play.',
    tags: ['Flutter', 'iOS', 'Android', 'CI / Release'],
  },
  {
    period: '2021 — 2022',
    role: 'Mobile Engineer',
    company: 'Upwork',
    location: 'Remote',
    summary:
      'Maintained and extended key features of an existing restaurant application, delivering responsive mobile and web experiences with Flutter and Dart.',
    tags: ['Flutter', 'Dart', 'Web'],
  },
  {
    period: '2018 — 2020',
    role: 'Mobile Engineer',
    company: 'Interactive Edge',
    location: 'Accra, Ghana',
    summary:
      'Designed and developed apps for a diverse range of clients in Agile teams. Optimised existing solutions and partnered with business analysts and QA to ship quality releases on schedule.',
    tags: ['Kotlin', 'Java', 'Android', 'Firebase'],
  },
];

export const projects: {
  name: string;
  year: string;
  description: string;
  role: string;
  tags: string[];
  color: string;
  // Optional screenshot in public/images/projects (16:9 works best). Falls back to a generated tile.
  image?: string;
  links: Link[];
}[] = [
  {
    name: 'TikFinity Mobile',
    year: '2025',
    description: 'A mobile app for TikTok LIVE creators with real-time sound alerts, text-to-speech and viewer interactions that keep running in the background.',
    role: 'Senior Mobile Engineer',
    tags: ['Flutter', 'iOS', 'Android', 'RevenueCat', 'Superwall'],
    color: '#fe2c55',
    links: [
      { label: 'Website', href: 'https://tikfinity.zerody.one/mobile/' },
      { label: 'App Store', href: 'https://apps.apple.com/us/app/tikfinity-mobile-alerts-tts/id6578448936' },
      { label: 'Google Play', href: 'https://play.google.com/store/apps/details?id=com.streamtv.tikstream' },
    ],
  },
  {
    name: 'AsiaFlare & LatinFlare',
    year: '2024',
    description: 'Dating apps connecting singles across Asia and Latin America.',
    role: 'Full Stack Mobile Developer',
    tags: ['Flutter', 'iOS', 'Android', 'Backend'],
    color: '#a855f7',
    links: [
      { label: 'AsiaFlare', href: 'https://asiaflareapp.com/' },
      { label: 'LatinFlare', href: 'https://latinflareapp.com/' },
    ],
  },
  {
    name: 'MyBestPic',
    year: '2023',
    description: 'Upload photos and get real feedback from others to discover your best pictures.',
    role: 'Mobile & Web Developer',
    tags: ['Flutter', 'Web', 'Payments'],
    color: '#f5b544',
    links: [
      { label: 'Website', href: 'https://mybestpic.com' },
      { label: 'Google Play', href: 'https://play.google.com/store/apps/details?id=com.mybestpic.twa' },
    ],
  },
  {
    name: 'Trip o’clock',
    year: '2022',
    description: 'An AI-powered travel planner with itineraries, group chat, expense tracking, travel maps and eSIMs.',
    role: 'Mobile Developer',
    tags: ['iOS', 'Android', 'AI'],
    color: '#22b8cf',
    links: [
      { label: 'Website', href: 'https://tripoclock.com/' },
      { label: 'App Store', href: 'https://apps.apple.com/us/app/trip-oclock-travel-planner/id1661002132' },
      { label: 'Google Play', href: 'https://play.google.com/store/apps/details?id=com.mizormor.traveler_app' },
    ],
  },
  {
    name: 'Oben Health',
    year: '2022',
    description: 'A health platform on a mission to reverse heart disease, with a companion dashboard for coaches.',
    role: 'Full Stack Mobile & Backend Developer',
    tags: ['Flutter', 'Node.js', 'Flutter Web'],
    color: '#34c38f',
    links: [{ label: 'Website', href: 'https://joinoben.com' }],
  },
  {
    name: 'WaCommunicate',
    year: '2021',
    description: 'A social network for buildings that connects building managers and tenants.',
    role: 'Lead Flutter Engineer',
    tags: ['Flutter', 'Android'],
    color: '#5b8def',
    links: [
      { label: 'Pro', href: 'https://play.google.com/store/apps/details?id=com.wacommunicate.pro' },
      { label: 'Gratis', href: 'https://play.google.com/store/apps/details?id=com.wacommunicate.gratis' },
    ],
  },
];

// Full list shown on /archive, newest first. `link` is optional.
export const archive: {
  year: string;
  name: string;
  madeAt?: string;
  tags: string[];
  link?: string;
}[] = [
  {
    year: '2025',
    name: 'TikFinity Mobile',
    madeAt: 'StreamTV Group',
    tags: ['Flutter', 'iOS', 'Android', 'RevenueCat'],
    link: 'https://tikfinity.zerody.one/mobile/',
  },
  {
    year: '2024',
    name: 'AsiaFlare',
    tags: ['Flutter', 'iOS', 'Android', 'Backend'],
    link: 'https://asiaflareapp.com/',
  },
  {
    year: '2024',
    name: 'LatinFlare',
    tags: ['Flutter', 'iOS', 'Android', 'Backend'],
    link: 'https://latinflareapp.com/',
  },
  {
    year: '2023',
    name: 'MyBestPic',
    madeAt: 'Ruvik Group',
    tags: ['Flutter', 'Web', 'Payments', 'Analytics'],
    link: 'https://mybestpic.com',
  },
  {
    year: '2022',
    name: 'Trip o’clock',
    tags: ['iOS', 'Android', 'AI'],
    link: 'https://tripoclock.com/',
  },
  {
    year: '2022',
    name: 'Oben Health App',
    madeAt: 'Oben Health',
    tags: ['Flutter', 'Dart'],
    link: 'https://joinoben.com',
  },
  {
    year: '2022',
    name: 'Health Coach Dashboard',
    madeAt: 'Oben Health',
    tags: ['Flutter Web', 'Dart'],
  },
  {
    year: '2022',
    name: 'Registration & Onboarding API',
    madeAt: 'Oben Health',
    tags: ['Node.js', 'REST APIs'],
  },
  {
    year: '2022',
    name: 'Farmer Data Collection & Aggregation',
    madeAt: 'BroadSpectrum',
    tags: ['Flutter', 'Dart'],
  },
  {
    year: '2022',
    name: 'In-house Flutter / Dart Package',
    madeAt: 'BroadSpectrum · Oben Health',
    tags: ['Flutter', 'Dart', 'Tooling'],
  },
  {
    year: '2021',
    name: 'WaCommunicate',
    madeAt: 'Walulel',
    tags: ['Flutter', 'Android'],
    link: 'https://play.google.com/store/apps/details?id=com.wacommunicate.pro',
  },
  {
    year: '2021',
    name: 'Restaurant App',
    madeAt: 'Upwork',
    tags: ['Flutter', 'Dart', 'Web'],
  },
  {
    year: '2019',
    name: 'Client Mobile Apps',
    madeAt: 'Interactive Edge',
    tags: ['Kotlin', 'Java', 'Firebase'],
  },
];

export const skills = ['Flutter', 'Dart', 'Kotlin', 'Swift', 'Android', 'iOS', 'Next.js', 'Node.js', 'JavaScript', 'Firebase', 'RevenueCat', 'Superwall', 'SQL / NoSQL', 'Figma'];

export const education = {
  degree: 'BSc. Information Technology',
  school: 'Ghana Communication Technology University',
  period: '2013 — 2017',
};

// Content for the printable résumé (src/pages/resume.astro).
export const resume = {
  summary: 'Senior mobile engineer building user-centric apps with Flutter, native Android & iOS, and Next.js / Node.js backends',
  // How many projects (from the top of `projects`) to list on the résumé.
  projectCount: 4,
  experience: [
    {
      role: 'Senior Mobile Engineer',
      company: 'StreamTV Group',
      period: 'Apr 2025 — Present',
      points: [
        'Built and maintained the Flutter iOS/Android mobile application, delivering real-time TikTok LIVE interactions, sound alerts, Text-to-Speech, notifications, subscriptions and creator engagement features',
        'Developed features across the Next.js web platform, including creator dashboards, account management, configuration and subscription-related functionality',
        'Built and integrated backend functionality within the Next.js application, including API routes, server-side business logic, authentication, creator configuration, subscription flows and integrations with external services',
        'Worked with real-time TikTok LIVE event streams, processing events such as gifts, follows, subscriptions, comments, shares and viewer interactions to trigger creator experiences',
        'Developed the audio/alert pipeline, supporting custom sounds, Text-to-Speech and event-based playback for live streams',
        'Implemented and maintained subscription and monetization infrastructure using RevenueCat and Superwall, including entitlements, trials, paywalls, promotional campaigns and purchase flows',
      ],
    },
    {
      role: 'Mobile Engineer',
      company: 'Ruvik Group',
      period: 'Mar 2023 — Feb 2025',
      points: [
        'Led development of a multi-platform mobile and web app that lets users create, view, and rate photos based on individual preferences',
        'Integrated secure payment gateways, behavioural tracking, and analytics tools to improve monetisation and drive data-informed decisions',
      ],
    },
    {
      role: 'Software Engineer',
      company: 'Oben Health',
      period: 'Aug 2022 — Aug 2023',
      points: [
        'Developed a mobile solution and a Flutter web dashboard empowering users and health coaches to curb, reverse, and prevent adverse health conditions',
        'Rebuilt the Node.js backend for seamless registration and onboarding, and maintained an in-house Flutter/Dart package used by the entire team',
      ],
    },
    {
      role: 'Flutter Engineer',
      company: 'BroadSpectrum Digital Payments',
      period: 'Jan 2022 — Mar 2023',
      points: [
        'Led development of a farmer data collection and aggregation solution impacting over 1.5 million farmers in Ghana, integrated with the government’s farmer subsidy programme',
        'Mentored junior engineers and maintained a widely used in-house Flutter/Dart package',
      ],
    },
    {
      role: 'Lead Flutter Engineer',
      company: 'Walulel',
      period: 'Jan 2021 — Feb 2022',
      points: [
        'Led development of the WaCommunicate admin and free user apps for users in Ghana and the UK, including UI and functionality tests',
        'Managed deployment, publishing, and versioning on the App Store and Google Play',
      ],
    },
    {
      role: 'Mobile Engineer',
      company: 'Upwork',
      period: 'Jan 2021 — Feb 2022',
      points: ['Maintained and developed key features for an existing restaurant application with Flutter and Dart'],
    },
    {
      role: 'Mobile Engineer',
      company: 'Interactive Edge',
      period: 'Mar 2018 — Feb 2020',
      points: [
        'Designed and developed mobile apps for diverse clients using Kotlin, Java, and Firebase in Agile/Scrum/Kanban teams',
      ],
    },
  ],
  skills: [
    { title: 'Languages', items: 'Dart, JavaScript, Kotlin, Swift, Java, SQL' },
    { title: 'Frameworks & Platforms', items: 'Flutter, Next.js, Node.js, Android, iOS, Firebase' },
    { title: 'Tools & Services', items: 'RevenueCat, Superwall, Git, Figma, Adobe XD, App Store & Google Play releases' },
  ],
  professional: 'Team leadership, mentorship, strategic planning, process improvement, presentation',
};
