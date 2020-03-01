import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  static Location FetchAny() {
    return Location(
        name: 'Location Detail by Flutter',
        url: 'https://community.rspb.org.uk/community/cfs-file.ashx/__key/communityserver-blogs-components-weblogfiles/00-00-01-88-34/Green_2D00_Fields_2D00_green_2D00_20340138_2D00_1280_2D00_1024.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]);
  }
}
