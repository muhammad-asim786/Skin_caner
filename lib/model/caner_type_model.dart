import '../core/constant/image.dart';

class CancerType {
  final int id;
  final String name;
  final String description;
  final List<String> image;

  CancerType(
      {required this.id,
      required this.name,
      required this.description,
      required this.image});
}

List<CancerType> cancerTypes = [
  CancerType(
      id: 1,
      name: 'Basal cell carcinoma',
      description:
          'Basal Cell Carcinoma The most common form of skin cancer is basal cell carcinoma or basal cell skin cancer. Basal cell carcinomas usually start as small lumps that gradually get bigger over time. The edges are often shiny or pearly and the middle tends to be rather sunken in or depressed. After some time the middle will start to become crusty and develop into an ulcer. Basal cell carcinomas do not usually cause any pain or discomfort, however they can be rather itchy.',
      image: [basaloneImage, basalsecondImage]),
  CancerType(
      id: 2,
      name: 'In situ',
      description:
          'In Situ Early forms of skin cancer are classified as in situ, which means “in place” in Latin. This means that the cancer is still superficial.',
      image: [situoneImage, situsecondImage]),
  CancerType(
      id: 3,
      name: 'Melanoma Skin Cancer',
      description:
          'Melanomas are less common, but once established can spread quite quickly to other organs in the body. Melanomas usually present on the body as new moles, or with changes to the colour, shape and texture of an existing mole. They are often accompanied by itching and/or bleeding, and the most common areas in which they appear are the back, legs, face and arms.',
      image: [situsecondImage]),
  CancerType(
      id: 4,
      name: 'Metastatic melanoma',
      description:
          'Metastatic melanoma occurs when the cancer has spread beyond its initial location on the skin and into the body. It occurs during melanoma stages three and four of the disease.',
      image: [metasticMelanoma]),
  CancerType(
      id: 5,
      name: 'Nodular & Radial Melanoma',
      description:
          'There are two main types of melanoma: radial and nodular. The radial type will grow near the skin surface and can be easy to see. They will often be raised, bumpy and irregular in shape with a mix of colours. This upwards growth is usually quite obvious.A nodular melanoma will begin its growth stage beneath the skin with downward growth coming first. That means it can be more difficult to see changes in the mole during the early stages.',
      image: [nodular]),
  CancerType(
      id: 6,
      name: 'Non-melanoma Skin Cancer',
      description:
          'Non-melanoma Skin Cancer Non-melanomas are the most common form of skin cancer, and usually develop in the upper layers of the skin, and grow quite slowly. The first signs of non-melanoma cancers are often patches or lesions on the skin that refuse to heal, even after a few weeks. There are two types of non-melanoma cancers: basal cell carcinoma and squamous cell carcinoma, which start in either the top or bottom layers of the skin..',
      image: [nonMelonamaImageone, nonMelonamaImagesecond]),
  CancerType(
      id: 7,
      name: 'Ocular Melanoma',
      description:
          'Ocular Melanoma Ocular melanoma develops in the same way as other melanomas with the pigment cells in the back of the eye starting to change. There are three main types including Uveal which affects the iris, Chorodial which begins in the blood vessels and Conjunctival which may appear as a raised tumour on the eye.',
      image: [ocular]),
  CancerType(
      id: 8,
      name: 'Squamous Cell Carcinoma',
      description:
          'Squamous cell carcinoma is the second most common type of skin cancer. It forms when squamous cells begin to grow uncontrollably in the top layers of the skin, called the epidermis. In most cases, it is caused by repeated exposure to UV rays over time. Squamous cell carcinoma usually first appears as a red, scaly plaque of skin or as a hard domed bump. Both varieties typically feel rough and crusty and can bleed when scraped.',
      image: [squamousOne, squamousSecond]),
];
