import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  static final List<Location> items = [
    Location(
        name: 'Arashiyama Bamboo Grove',
        url: 'https://www.touristinjapan.com/wp-content/uploads/2019/03/arashiyama-bamboo-forest-1020x600.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Location(
      name: 'Mount Fuji',
      url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/080103_hakkai_fuji.jpg/1280px-080103_hakkai_fuji.jpg',
      facts: <LocationFact>[
        LocationFact(
          title: 'Summary',
          text: 'Japan\'s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called "Fuji-san,"'
              'it\'s the country\'s tallest peak, at 3,776 meters. A pilgrimage site for centuries it\'s considered one of '
              'Japan\'s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of '
              'numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'
        ),
        LocationFact(
          title: 'Did You Kwow',
          text: 'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'
        )
      ],
    ),
    Location(
      name: 'Kiyomizu-dera',
      url: 'https://gaijinpot.scdn3.secure.raxcdn.com/app/uploads/sites/6/2017/07/Kiyomizudera-Temple-Kyoto.jpg',
      facts: <LocationFact>[
        LocationFact(
          title: 'Summary',
          text: 'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. '
              'The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'
        ),
        LocationFact(
          title: 'Architectural Style',
          text: 'Japanese Buddhist architecture'
        )
      ]
    ),
    Location(
        name: 'Kinkaku-ji',
        url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Kinkaku-ji_the_Golden_Temple_in_Kyoto_overlooking_the_lake_-_high_rez.JPG/220px-Kinkaku-ji_the_Golden_Temple_in_Kyoto_overlooking_the_lake_-_high_rez.JPG',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text: 'Kinkaku-ji, officially named Rokuon-ji, is a Zen Buddhist temple in Kyto, Japan. '
                  'It is one of the most popular buildings in Japan, attracting a large number of visitors annually.'
          ),
          LocationFact(
              title: 'Did You Know',
              text: 'The Golden Pavilion is set in a magnificent Japanese strolling garden.'
          )
        ]
    )

  ];

  static Location FetchAny() {
    return items[0];
  }

  static List<Location> FetchMany() {
    return items;
  }
}
