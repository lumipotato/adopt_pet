class AdoptPet {
  String name;
  String breed;
  String description;
  String age;
  String weight;
  String gender;
  String loc;
  String imageAsset;
  List<String> imageUrls;

  AdoptPet({
    required this.name,
    required this.breed,
    required this.description,
    required this.age,
    required this.weight,
    required this.gender,
    required this.loc,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var adoptList = [
  AdoptPet(
    name: 'Lingling',
    breed: 'Calico',
    description:
    'Kucing betina cantik, mirip artis korea. Terlihat jinak dan memang jinak, tapi dia suka menangkap hewan kecil seperti cicak dan serangga. Ukuran nya memang masih kecil, tapi dia sangat lincah.',
    age: '4 Bulan',
    weight: '500 gram',
    gender: 'Female',
    loc: 'Cikini',
    imageAsset: 'images/lingling.jpg',
    imageUrls: [
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/234548870_156605056497201_2854604983367666816_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=0Lhc5Ivlj1UAX9VAop8&tn=W4EZe4XwLrE4hk30&edm=ABfd0MgBAAAA&ccb=7-4&oh=45da42d51f77c5d2962e31a3424dbc61&oe=6118CA08&_nc_sid=7bff83',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/235950054_650057233063655_5168134016270799890_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=111&_nc_ohc=gsShCnQSbZUAX-bzuK7&edm=ABfd0MgBAAAA&ccb=7-4&oh=36dae071cb78402f60e7c00c40d39eb1&oe=611952A6&_nc_sid=7bff83',
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/c236.0.608.608a/s320x320/234575950_253143256631444_9220709794579579975_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=HyxbHqmCSwYAX98YTlg&edm=ABfd0MgBAAAA&ccb=7-4&oh=a2f5b0481b12ba4c838d16fd7fe1219f&oe=61193225&_nc_sid=7bff83'
    ],
  ),
  AdoptPet(
    name: 'Cimot',
    breed: 'Persian',
    description:
    'Kucing gendut tapi sangat agresif, memiliki kecepatan tinggi apalagi kalau dengar suara mangkok makanan di isi. Gemar membully kucing lain, namun dia sangat penyayang dengan keluarganya.',
    age: '3 Tahun',
    weight: '5 kg',
    gender: 'Male',
    loc: 'Bulungan',
    imageAsset: 'images/cimot.jpg',
    imageUrls: [
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/11910102_759868777455146_2082556762_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=102&_nc_ohc=wDZY3btlKHQAX_783tk&edm=APU89FABAAAA&ccb=7-4&oh=6070f28e87e165af500f3eb81ebac877&oe=611961E9&_nc_sid=86f79a',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/11899552_1477784505882922_2064134056_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=loAMsotzAMAAX_Kv1wB&edm=APU89FABAAAA&ccb=7-4&oh=3fa2d177bff4add3002338dc5f952aae&oe=611856B0&_nc_sid=86f79a',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/11910338_128584604153178_1101173742_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=hNLxZTFy9y4AX9Nc3_v&edm=APU89FABAAAA&ccb=7-4&oh=63397986f1bf65e07152e645a5edd7d0&oe=61199A6B&_nc_sid=86f79a',
    ],
  ),
  AdoptPet(
    name: 'Onet',
    breed: 'Ginger Solid',
    description:
    'Kucing oren, tapi masih muda, bakat barbar nya sudah terlihat. Ahli menangkap kadal, terlihat pemalu, tapi aslinya galak, ya namanya juga kucing oren.',
    age: '4 Bulan',
    weight: '550 gram',
    gender: 'Male',
    loc: 'Cilandak',
    imageAsset: 'images/onet.jpg',
    imageUrls: [
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/234575949_3004771319784999_4152540823619134024_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=97FeI6uAs-8AX-2sHww&edm=ABfd0MgBAAAA&ccb=7-4&oh=7295c7a6ccda005fd0d31c61e8ff0100&oe=61197C03&_nc_sid=7bff83',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/235050309_567382604633623_3979897435615583904_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=107&_nc_ohc=423dUT6aefEAX_4XucX&edm=ABfd0MgBAAAA&ccb=7-4&oh=354196ff57c68f9204837ffb8f3d770e&oe=61199012&_nc_sid=7bff83',
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/234623145_576327380057089_838995793133499154_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=FPSm1oqX4k4AX8xKBqo&edm=ABfd0MgBAAAA&ccb=7-4&oh=5c1aba9d57cca32c1deff62c6b22a11a&oe=61189536&_nc_sid=7bff83',
    ],
  ),
  AdoptPet(
    name: 'Frosty Yogurt',
    breed: 'Himalaya',
    description:
    'Warnanya putih, matanya biru. Telinga, ekor, dan ujung kaki nya berwarna kuning. Sangat lincah, suka lari lari random, pemberani, dan agak barbar seperti kucing oren. Jangan tertipu muka imut nya, dia sangat bandel.',
    age: '5 Bulan',
    weight: '600 gram',
    gender: 'Male',
    loc: 'Bogor',
    imageAsset: 'images/oti.jpg',
    imageUrls: [
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/c0.90.720.720a/s320x320/75310181_576197433115395_5024182956187242445_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=SsGc0qqn2SsAX_DDFIw&edm=APU89FABAAAA&ccb=7-4&oh=2ee80bc2d93839a700d34e65b419fa9d&oe=6119FBE4&_nc_sid=86f79a',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/13686926_1129328450491626_738310404_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=OI1LPWBaUQwAX9nliqU&edm=APU89FABAAAA&ccb=7-4&oh=abdd1b7766bbae8c00a789ddfd45bf08&oe=611A3F29&_nc_sid=86f79a',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/14052148_1815063322061111_130787995_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=111&_nc_ohc=VZt4lrHqMLEAX-hZRln&edm=APU89FABAAAA&ccb=7-4&oh=0153a01a413ce10ba2f973a839a64dc4&oe=61184EEB&_nc_sid=86f79a',
    ],
  ),
  AdoptPet(
    name: 'Bolu',
    breed: 'Persian Shorthair',
    description:
    'Kucing oren yang gendut, kerjaan nya cuman tidur, makan, rebahan. Sering berpatroli di wilayahnya, karena dia kucing alpha. Disegani kucing lain karena ukuran nya yang sangat besar, tapi dia kalem dan tidak agresif. Sosok pemimpin yang bijaksana.',
    age: '4 Tahun',
    weight: '6 kg',
    gender: 'Male',
    loc: 'Salemba',
    imageAsset: 'images/bolu.jpg',
    imageUrls: [
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/72109821_566946987417258_2194410699199136287_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=mzMNhCvbVSIAX8L6dTG&edm=APU89FABAAAA&ccb=7-4&oh=056093f3d18fd4f0f1285aafd1450526&oe=6119970F&_nc_sid=86f79a',
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/71895339_442247659762017_2336566540688828719_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=_ALbggrXuYkAX-IVnKi&edm=APU89FABAAAA&ccb=7-4&oh=bd1f1c1fe62e98618bd9f751ab8849f8&oe=6119023C&_nc_sid=86f79a',
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/57561455_105779300565349_8453150128866404232_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=d0dQMY8o1eoAX_lD8PZ&edm=APU89FABAAAA&ccb=7-4&oh=36ca3c87b6d6d6e9e535ff4669da6dff&oe=6118698E&_nc_sid=86f79a',
    ],
  ),
  AdoptPet(
    name: 'Jahe',
    breed: 'Mix Domestic',
    description:
    'Matanya sipit, ibunya persia, bapaknya tidak diketahui. Suka makan apa aja, termasuk kerupuk dan jagung marning. Dia sangat sering mengoceh, entah apa yang dia omongin, kita dengernya meong meong aja.',
    age: '1 Tahun',
    weight: '2 kg',
    gender: 'Male',
    loc: 'Palmerah',
    imageAsset: 'images/jahe.jpg',
    imageUrls: [
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/119917539_327794641877577_1595245117315810999_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=wffSdu7eR80AX_Dq1ql&tn=W4EZe4XwLrE4hk30&edm=ABfd0MgBAAAA&ccb=7-4&oh=b484fd63282401b7339624cc68c539b0&oe=6119E72E&_nc_sid=7bff83',
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/104273774_298460124536105_2546077498484685553_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=tPgiRAtEMkMAX8rsXWf&edm=APU89FABAAAA&ccb=7-4&oh=98c4dad27304c2e9e967cec2c5023cde&oe=6119218E&_nc_sid=86f79a',
      'https://instagram.fcgk18-1.fna.fbcdn.net/v/t51.2885-15/e35/s320x320/234767831_1237136446732681_1890425548522986306_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=Hldwf9P5pN0AX8xpnJH&tn=W4EZe4XwLrE4hk30&edm=ABfd0MgBAAAA&ccb=7-4&oh=91c8865c8e61090e5b8c72e75975e228&oe=611A0A96&_nc_sid=7bff83',
    ],
  ),
  AdoptPet(
    name: 'Kemol',
    breed: 'Persian Mix',
    description:
    'Masih kecil sudah barbar, semua saudaranya di bully, sama kucing besar pun dia berani. Kalau tidur maunya di kasur. Makanan kesukaan adalah ikan lele goreng.',
    age: '4 Bulan',
    weight: '500 gram',
    gender: 'Male',
    loc: 'Senayan',
    imageAsset: 'images/kemol.jpg',
    imageUrls: [
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/c236.0.608.608a/s320x320/234681545_547068466520938_551235429855831500_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=upGiqoW3ogAAX_inmQb&edm=ABfd0MgBAAAA&ccb=7-4&oh=e71292d03d3af343fcc271e667cafe79&oe=611979DE&_nc_sid=7bff83',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/c236.0.608.608a/s320x320/236225188_1016636292441430_3038438734198049406_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=uTH0uS4j_7AAX9FOlsf&edm=ABfd0MgBAAAA&ccb=7-4&oh=710f44bbfca8cee98c7a5ef1db2984b5&oe=6119E16F&_nc_sid=7bff83',
      'https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-15/e35/c236.0.608.608a/s320x320/154818103_720427315300190_5215802848265163035_n.jpg?_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=102&_nc_ohc=q6-9zPpdunYAX-Rp3Lm&edm=APU89FABAAAA&ccb=7-4&oh=4a41bebeb6182f042e1d405638b545fa&oe=6119C51A&_nc_sid=86f79a',
    ],
  ),
];
