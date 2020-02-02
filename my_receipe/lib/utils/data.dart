import 'package:my_receipe/utils/class.dart';

class Data {
  static List<Recipe> recipes = [
    Recipe(
        id: '1',
        title: 'Mo:Mo',
        imageUrl:
        'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        nutrients: [
          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '2',
        title: 'Cappuccino',
        imageUrl:
        'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80',
        nutrients: [
          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '3',
        title: 'Spaghetti',
        imageUrl:
        'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
        nutrients: [
          Nutrients(name: 'Calories', weight: '100', percent: 0.2),
          Nutrients(name: 'Protein', weight: '10gm', percent: 0.7),
          Nutrients(name: 'Carb', weight: '50gm', percent: 0.6),
          Nutrients(name: 'Fat', weight: '10gm', percent: 0.3),
        ],
        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '4',
        title: 'Pizza',
        imageUrl:
        'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
        nutrients: [
          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '5',
        title: 'Cioppino',
        imageUrl:
        'https://i.imgur.com/VyFxgzts.jpg',
        nutrients: [
          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Begin by heating 4 tablespoons of the oil over medium heat.',
          'Add the wine and increase the heat to high.',
          'Add the crushed tomatoes, clam juice, sugar, 1 teaspoon of the salt, red pepper flakes, oregano, thyme sprigs, and 1 cup of water.'
        ],
        ingredients: [
          '4 large garlic cloves, minced.',
          '2 medium onions, finely chopped.'
        ]),
    Recipe(
        id: '6',
        title: 'Kachchi Biryani',
        imageUrl:
        'https://drive.google.com/open?id=1tmGygLbplZ8IMGoJjid1ZycN_H8_COp-',
        nutrients: [
          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
        ],
        steps: [
          'Begin by heating 4 tablespoons of the oil over medium heat.',
          'Add the wine and increase the heat to high.',
          'Add the crushed tomatoes, clam juice, sugar, 1 teaspoon of the salt, red pepper flakes, oregano, thyme sprigs, and 1 cup of water.'
        ],
        ingredients: [
          '4 large garlic cloves, minced.',
          '2 medium onions, finely chopped.'
        ]),
  ];

}