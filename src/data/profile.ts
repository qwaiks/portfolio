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
    'I’m a full-stack mobile engineer who loves turning ideas into products people enjoy using. For over <strong>5 years</strong> I’ve shipped apps with <strong>Flutter</strong>, native <strong>Android</strong> and <strong>iOS</strong>, and built the <strong>Node.js</strong> services and in-house tooling behind them.',
    'Currently, I’m a Mobile Engineer at <strong>Ruvik Group</strong>, where I lead a multi-platform photo app across mobile and web — from pixel-perfect UI to payments, behavioural tracking and analytics.',
    'Along the way I’ve built software that reached <strong>over 1.5 million farmers</strong> in Ghana, helped health coaches in California support their clients, and connected building managers and tenants in London. I also enjoy mentoring junior engineers and building shared packages that make whole teams faster.',
  ],
};

export type Link = { label: string; href: string };

export const experience = [
  {
    period: '2023 — Present',
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
    name: 'Jubley',
    year: '2024',
    description: 'A dating app built to bring people together, available on iOS, Android and the web.',
    role: 'Full Stack Mobile Developer',
    tags: ['Flutter', 'iOS', 'Android', 'Backend'],
    color: '#e2584d',
    links: [
      { label: 'Website', href: 'https://jubley.com' },
      { label: 'App Store', href: 'https://apps.apple.com/us/app/jubley/id6465207276' },
      { label: 'Google Play', href: 'https://play.google.com/store/apps/details?id=com.jubley.app' },
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
    tags: ['Flutter', 'iOS', 'Android'],
    color: '#5b8def',
    links: [
      { label: 'Admin · iOS', href: 'https://apps.apple.com/gh/app/wacommunicate-admin/id1527069571' },
      { label: 'Cityzen · iOS', href: 'https://apps.apple.com/lt/app/wacommunicate-cityzen/id1527069282' },
      { label: 'Pro · Android', href: 'https://play.google.com/store/apps/details?id=com.wacommunicate.pro' },
      { label: 'Gratis · Android', href: 'https://play.google.com/store/apps/details?id=com.wacommunicate.gratis' },
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
    year: '2024',
    name: 'Jubley',
    tags: ['Flutter', 'iOS', 'Android', 'Backend'],
    link: 'https://jubley.com',
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
    name: 'WaCommunicate Admin',
    madeAt: 'Walulel',
    tags: ['Flutter', 'iOS'],
    link: 'https://apps.apple.com/gh/app/wacommunicate-admin/id1527069571',
  },
  {
    year: '2021',
    name: 'WaCommunicate Cityzen',
    madeAt: 'Walulel',
    tags: ['Flutter', 'iOS'],
    link: 'https://apps.apple.com/lt/app/wacommunicate-cityzen/id1527069282',
  },
  {
    year: '2021',
    name: 'WaCommunicate Pro',
    madeAt: 'Walulel',
    tags: ['Flutter', 'Android'],
    link: 'https://play.google.com/store/apps/details?id=com.wacommunicate.pro',
  },
  {
    year: '2021',
    name: 'WaCommunicate Gratis',
    madeAt: 'Walulel',
    tags: ['Flutter', 'Android'],
    link: 'https://play.google.com/store/apps/details?id=com.wacommunicate.gratis',
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

export const skills = ['Flutter', 'Dart', 'Kotlin', 'Swift', 'Android', 'iOS', 'Node.js', 'JavaScript', 'Firebase', 'SQL / NoSQL', 'Figma', 'Adobe XD'];

export const education = {
  degree: 'BSc. Information Technology',
  school: 'Ghana Communication Technology University',
  period: '2013 — 2017',
};

// Content for the printable résumé (src/pages/resume.astro).
export const resume = {
  summary: 'Senior mobile engineer building user-centric apps with Flutter, native Android & iOS, and Node.js backends',
  experience: [
    {
      role: 'Fullstack Mobile Engineer',
      company: 'StreamTV',
      period: 'Mar 2025 — Present',
      points: [
        'Lead development of a multi-platform mobile and web app that lets users create, view, and rate photos based on individual preferences',
        'Translate high-fidelity mockups into responsive mobile code that performs across devices and screen sizes, backed by comprehensive functionality tests',
        'Integrate secure payment gateways, behavioural tracking, and analytics tools to improve monetisation and drive data-informed decisions',
      ],
    },
    {
      role: 'Mobile Engineer',
      company: 'Ruvik Group',
      period: 'Mar 2023 — Feb 2025',
      points: [
        'Lead development of a multi-platform mobile and web app that lets users create, view, and rate photos based on individual preferences',
        'Translate high-fidelity mockups into responsive mobile code that performs across devices and screen sizes, backed by comprehensive functionality tests',
        'Integrate secure payment gateways, behavioural tracking, and analytics tools to improve monetisation and drive data-informed decisions',
      ],
    },
    {
      role: 'Software Engineer',
      company: 'Oben Health',
      period: 'Aug 2022 — Aug 2023',
      points: [
        'Developed a mobile solution empowering users to curb, reverse, and prevent adverse health conditions',
        'Built a Flutter web dashboard enabling health coaches to efficiently support their clients',
        'Rebuilt the Node.js backend for seamless registration and onboarding, with improved API endpoints for the mobile app',
        'Created and maintained an in-house Flutter/Dart package used by the entire team',
      ],
    },
    {
      role: 'Flutter Engineer',
      company: 'BroadSpectrum Digital Payments',
      period: 'Jan 2022 — Mar 2023',
      points: [
        'Led development of a farmer data collection and aggregation solution impacting over 1.5 million farmers in Ghana',
        'Revamped the produce collection system and integrated it with the government’s farmer subsidy programme',
        'Mentored junior engineers and maintained a widely used in-house Flutter/Dart package',
      ],
    },
    {
      role: 'Lead Flutter Engineer',
      company: 'Walulel',
      period: 'Jan 2021 — Feb 2022',
      points: [
        'Led development of the WaCommunicate admin and free user apps for users in Ghana and the UK',
        'Authored UI and functionality tests to ensure code quality and reliability',
        'Managed deployment, publishing, and versioning on the App Store and Google Play',
      ],
    },
    {
      role: 'Mobile Engineer',
      company: 'Upwork',
      period: 'Jan 2021 — Feb 2022',
      points: [
        'Maintained and developed key features for an existing restaurant application',
        'Built responsive mobile and web experiences with Flutter and Dart from high-fidelity mockups',
      ],
    },
    {
      role: 'Mobile Engineer',
      company: 'Interactive Edge',
      period: 'Mar 2018 — Feb 2020',
      points: [
        'Designed and developed mobile apps for diverse clients using Kotlin, Java, and Firebase in Agile/Scrum/Kanban teams',
        'Delivered against product roadmap milestones and strict release plans, and optimised the performance of existing solutions',
      ],
    },
  ],
  skills: [
    { title: 'Languages', items: 'Dart, Kotlin, Swift, Java, JavaScript, SQL' },
    { title: 'Frameworks & Platforms', items: 'Flutter, Android, iOS, Node.js, Firebase' },
    { title: 'Tools & Practices', items: 'Git, Figma, Adobe XD, Testing, Debugging, App Store & Google Play releases' },
  ],
  professional: 'Team leadership, mentorship, strategic planning, process improvement, presentation',
};
