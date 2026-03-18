import '../models/story.dart';

final List<Story> allStories = [
  Story(
    id: '1',
    titleAm: 'የጉልላይት እና አንበሳ',
    titleAa: 'Gullayte kee Leebba',
    category: 'እንስሳት',
    summary: 'ብልህ ጉልላይት ትልቅ አንበሳን እንዴት እንደተታለለ',
    content: 'በጥንት ጊዜ አንድ ትልቅ አንበሳ በጫካ ይኖር ነበር። አንድ ቀን ትንሽ ጉልላይት አገኘው...',
    imageUrl: 'https://picsum.photos/id/1015/800/600',
    readingTime: 5,
  ),
  Story(
    id: '2',
    titleAm: 'የቀብቆች ተረት',
    titleAa: 'Qabqobi hiyya',
    category: 'ተፈጥሮ',
    summary: 'ቀብቆች እንዴት እንደተባበሩ እና ድል እንደተቀዳጁ',
    content: 'በአንድ ጊዜ ቀብቆች በአንድ ቦታ ተሰብስበው...',
    imageUrl: 'https://picsum.photos/id/102/800/600',
    readingTime: 4,
  ),
  Story(
    id: '3',
    titleAm: 'የእናት ፍቅር',
    titleAa: 'Ina kixni',
    category: 'ሰዎች',
    summary: 'እናት ልጇን እንዴት እንደታደገች',
    content: 'አንዲት እናት በጣም ድሃ ነበረች...',
    imageUrl: 'https://picsum.photos/id/201/800/600',
    readingTime: 6,
  ),
];
