# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

require 'faker'

puts "Creating users..."

max_mustermann = User.create(
  email: "max.mustermann@mustermail.com",
  password: "12345678",
  first_name: "Max",
  last_name: "Mustermann",
  is_refugee: false
)

refugee_1 = User.create(
  email: "mohamed.karasin@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Mohamed",
  last_name: "Karasin",
  is_refugee: true
)

refugee_2 = User.create(
  email: "leyla.essa@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Leyla",
  last_name: "Essa",
  is_refugee: true
)

refugee_3 = User.create(
  email: "junis.haddad@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Junis",
  last_name: "Haddad",
  is_refugee: true
)

refugee_4 = User.create(
  email: "nael.mahmood@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Nael",
  last_name: "Mahmood",
  is_refugee: true
)

refugee_5 = User.create(
  email: "tarek.mansoor@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Tarek",
  last_name: "Mansoor",
  is_refugee: true
)

refugee_6 = User.create(
  email: "kaya.rahman@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Kaya",
  last_name: "Rahman",
  is_refugee: true
)

refugee_7 = User.create(
  email: "devin.abel@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Devin",
  last_name: "Abdel",
  is_refugee: true
)

refugee_8 = User.create(
  email: "amar.naser@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Amar",
  last_name: "Naser",
  is_refugee: true
)

refugee_9 = User.create(
  email: "amir.qasim@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Amir",
  last_name: "Qasim",
  is_refugee: true
)

refugee_10 = User.create(
  email: "ali.sam@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Ali",
  last_name: "Sam",
  is_refugee: true
)

refugee_11 = User.create(
  email: "anna.mansour@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Anna",
  last_name: "Mansour",
  is_refugee: true
)

refugee_12 = User.create(
  email: "mara.hadad@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Mara",
  last_name: "Hadad",
  is_refugee: true
)

refugee_13 = User.create(
  email: "aleyna.mousa@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Aleyna",
  last_name: "Mousa",
  is_refugee: true
)

refugee_14 = User.create(
  email: "samira.malik@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Samira",
  last_name: "Malik",
  is_refugee: true
)

refugee_15 = User.create(
  email: "yara.awad@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Yara",
  last_name: "Awad",
  is_refugee: true
)

refugee_16 = User.create(
  email: "liyah.hassan@#{Faker::Internet.domain_name}",
  password: "12345678",
  first_name: "Liyah",
  last_name: "Hassan",
  is_refugee: true
)

puts "Creating matches..."

match_1 = Match.create(
  user_a: max_mustermann,
  user_b: refugee_3
)

match_2 = Match.create(
  user_a: max_mustermann,
  user_b: refugee_7
)

match_3 = Match.create(
  user_a: max_mustermann,
  user_b: refugee_10
)

match_4 = Match.create(
  user_a: max_mustermann,
  user_b: refugee_16
)

puts "Creating questions..."

question_1 = Question.create(
  title: "Where can I educate myself for free/low cost?",
  text: "I have recently arrived in Germany and I would like to spend my free time to educate further.",
  user: User.where(is_refugee: true).sample
)

question_2 = Question.create(
  title: "I am looking for a affordable way to get to Hamburg",
  text: "My cousin lives in Hamburg and I would like to visit him. I need help to find the best way to get there. I already heard about trains, but if there are any better alternatives please let me know.",
  user: User.where(is_refugee: true).sample
)

question_3 = Question.create(
  title: "My family is still in Syria, where can I try to organize for them to come to Germany?",
  text: "I would really like to get my children here, but I have no idea where to start. Do you have any tips?",
  user: User.where(is_refugee: true).sample
)

question_4 = Question.create(
  title: "Free soccer training/matches?",
  text: "I love playing soccer and would say I am a medium good player. Any ideas where I can regularly participate in training sessions or matches?",
  user: User.where(is_refugee: true).sample
)

question_5 = Question.create(
  title: "Anyone willing to meet for coffee once a week to improve my German?",
  text: "I only speak little German and would like to improve my skills by casually speaking over everyday topics with someone fluent in German.",
  user: User.where(is_refugee: true).sample
)

question_6 = Question.create(
  title: "My daughter is looking for friends to play at the playground with.",
  text: "My daughter (6yo) is looking for friends to play with. She speaks a little German and would love to find some new friends.",
  user: User.where(is_refugee: true).sample
)

puts "Creating resources..."

Resource.create(
  title: "Arbeiter-Samariter-Bund (ASB)",
  link: "https://www.asb.de/en/relief-and-welfare/help-refugees",
  text: "The Arbeiter-Samariter-Bund is working for refugees at numerous locations. It operates emergency and community shelters as well as initial reception facilities and cares for unaccompanied minor refugees in residential groups as well as families in decentralized housing projects. With the support of many volunteers, the association offers clothing chambers, German and first aid courses, leisure activities, migration counselling and child care."
)

Resource.create(
  title: "Arbeiterwohlfahrt (AWO)",
  link: "https://www.awo.org/themen/integration",
  text: "The Arbeiterwohlfahrt (Workers' Welfare Association) provides housing in initial reception facilities and hundreds of migration and integration services. There, refugees receive advice about offices and authorities, German courses, individual integration planning, referral to institutions and organisations with special offers of help and socio-educational support. The AWO Bundesverband carries out lobbying and advocacy work for political leaders in order to improve the livelihoods of refugees in Germany in the long term."
)

Resource.create(
  title: "ADRA Deutschland e.V.",
  link: "https://adra.de/tag/fluechtlinge/",
  text: "ADRA coordinates voluntary groups and helper groups nationwide within the framework of the alliance 'Gemeinsam für Flüchtlinge' (Together for Refugees). The voluntary helpers have the opportunity to help refugees through donations in kind, sponsorships, neighbourhood help, language courses, regional studies and leisure activities."
)

Resource.create(
  title: "CARE Deutschland-Luxemburg e.V.",
  link: "https://www.care.de/nothilfe/themen/fluechtlinge/",
  text: "CARE financially supports refugee initiatives and associations in the Rhineland and Saxony. In this way, voluntary commitment is to be coordinated and bundled. The money will be used in particular for language lessons, leisure activities for children and young people, social care and integration measures."
)

Resource.create(
  title: "Help",
  link: "https://www.help-ev.de/en/topic/refugees/",
  text: "Help - help for self-help: In cooperation with several associations, Help offers refugees various support programmes such as computer courses and educational projects. In addition, the asylum seekers are equipped with computer equipment and supported in school-leaving qualifications and job searches."
)

Resource.create(
  title: "Johanniter-Unfall-Hilfe",
  link: "https://www.johanniter.de/hilfsprojekte/fluechtlingshilfe-und-integration/",
  text: "Johanniter-Unfall-Hilfe takes care of thousands of people in numerous institutions throughout Germany. The Johanniter-Unfall-Hilfe offers a medical service for the refugees, takes care of the construction of temporary and long-term accommodation, and offers a comprehensive range of care services. In the area of integration, the focus is on access to language instruction, training and work."
)

Resource.create(
  title: "Malteser Hilfsdienst",
  link: "https://www.malteser-international.org/en/about-us/current-topics/refugees-and-displacement.html",
  text: "Malteser Hilfsdienst supports refugees at numerous locations. On behalf of the Länder and local authorities, they help to set up long and short-term accommodation. The services they offer include childcare, advice on practical everyday issues, assistance with visits to the authorities, learning the German language and finding accommodation and work - especially for unaccompanied minors."
)

Resource.create(
  title: "Islamic relief",
  link: "http://www.islamicrelief.de/",
  text: "Islamic Relief distributes vouchers for clothing chambers to refugees. They also hand out everyday necessities such as hygiene articles, household goods and appliances, school satchels, prams, toys and furniture."
)

Resource.create(
  title: "World Vision Germany",
  link: "https://www.worldvision.org/our-work/refugees-fragile-states",
  text: "World Vision has set up childcare centres throughout Germany for refugee children and children from the neighbourhood. Unaccompanied minor refugees receive psychological care."
)

Resource.create(
  title: "Zentralwohlfahrtsstelle der Juden in Deutschland",
  link: "https://www.zwst.org/de/mbe/fluechtlingshilfe/",
  text: "The Zentralwohlfahrtsstelle der Juden in Germany advises refugees nationwide on legal and social issues and, with a team of experts, cares for traumatised people."
)

Resource.create(
  title: "Paritätischer Gesamtverband",
  link: "https://www.der-paritaetische.de/schwerpunkt/fluechtlingshilfe/aktivitaeten/",
  text: "Many member organisations of the Paritätischer Gesamtverband in Germany such as arche noVa, Freunde der Erziehungskunst, HelpAge, LandsAid and SODI are active in advising and supporting refugees. They assist the refugees in legal and social questions concerning work, housing, family reunification, residence, partnership and family, support them in official matters, arrange legal assistance and offer a wide range of educational and leisure activities. Thus, there are opportunities to attend language courses as well as vocational training courses. Several member organisations are also involved in the counselling and care of unaccompanied minor refugees and the treatment of traumatised people. In addition, refugees are trained as integration helpers in order to make it easier for newly arriving refugees to start a new life. Handicap International is especially dedicated to the care of refugees with disabilities."
)

puts "Done! 🎉"


