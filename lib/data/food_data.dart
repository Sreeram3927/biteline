import 'package:biteline/models/food.dart';

class FoodData {

  static List<String> foodTypes = foods.keys.toList();

  Map<String, List<Food>> get getFoods => foods;
  static Map<String, List<Food>> foods = {
    'Breakfast': [
      Food(
        id: 100,
        name: 'Idly',
        imageUrl:
            'https://img.freepik.com/premium-photo/idly-idli-south-indian-main-breakfast-item-which-is-beautifully-arranged-earthen-ware_527904-2855.jpg?w=826',
        type: 'Breakfast',
        price: 30.0,
        rating: 4.5,
        description:
            'Start your day right with Idli, a healthy and delicious breakfast staple from South India...',
      ),
      Food(
        id: 101,
        name: 'Dosa',
        imageUrl:
            'https://drrafeena.com/data/2019/08/healthy-dosha-e1684740111675.jpg',
        type: 'Breakfast',
        price: 60.0,
        rating: 4.8,
        description:
            'Craving a South Indian classic? Dosa is our go-to! Imagine a crispy, thin crepe made with fermented rice and lentil batter...',
      ),
      Food(
        id: 102,
        name: 'Ghee Dosa',
        imageUrl:
            'https://img.freepik.com/premium-photo/dosa-ghee-roast-dosafamous-south-indian-breakfast-item-which-is-made-caste-iron-pan-traditional-way-arranged-whiteplate-with-side-dish-white-background-isolated_527904-2952.jpg',
        type: 'Breakfast',
        price: 75.0,
        rating: 4.7,
        description:
            'The Ghee Roast Dosa is a South Indian breakfast superstar, loved for its delightful textural contrast and rich flavor...',
      ),
      Food(
        id: 103,
        name: 'Masala Dosa',
        imageUrl:
            'https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/masala-dosa-2-500x500.jpg',
        type: 'Breakfast',
        price: 70.0,
        rating: 4.6,
        description:
            'This delicate envelope is made from a fermented batter of rice and lentils, lending a slightly tangy taste...',
      ),
      Food(
        id: 104,
        name: 'Omelette',
        imageUrl:
            'https://media.istockphoto.com/id/1372112175/photo/omelet-frittata-homemade-omelet-isolated-on-dish-with-white-background.jpg?s=612x612&w=0&k=20&c=e6F08MErFbCxB7dAQbVvNGUlRdOYLLuaoVFtHl09R0I=',
        type: 'Breakfast',
        price: 20.0,
        rating: 4.4,
        description:
            'The humble omelette transforms a few simple ingredients into a delightful meal...',
      ),
      Food(
        id: 105,
        name: 'Bread Omelette',
        imageUrl:
            'https://www.indianhealthyrecipes.com/wp-content/uploads/2019/04/bread-omelette-680x510.jpg.webp',
        type: 'Breakfast',
        price: 30.0,
        rating: 4.3,
        description:
            'The bread omelette is a delightful and quick breakfast or snack that combines the goodness of eggs and bread...',
      ),
      Food(
        id: 106,
        name: 'Vada',
        imageUrl:
            'https://www.shutterstock.com/image-photo/south-indian-vada-medu-dal-260nw-1943888455.jpg',
        type: 'Breakfast',
        price: 15.0,
        rating: 4.7,
        description:
            'These crispy fritters come in many delicious variations, but all are made with lentils or veggies and spices...',
      ),
      Food(
        id: 107,
        name: 'Pongal',
        imageUrl:
            'https://t4.ftcdn.net/jpg/04/93/56/77/360_F_493567723_YN7jVzDOXoW2LVs9uYIg5KA3SMvAeUoP.jpg',
        type: 'Breakfast',
        price: 45.0,
        rating: 4.6,
        description:
            'Pongal is a hearty South Indian porridge that comes in two delicious varieties: sweet and savory!...',
      ),
      Food(
        id: 108,
        name: 'Poori',
        imageUrl:
            'https://t4.ftcdn.net/jpg/05/21/56/87/360_F_521568710_g4pJZsnYI3pfhGNYu3UuFjCRQTLLpmdC.jpg',
        type: 'Breakfast',
        price: 50.0,
        rating: 4.5,
        description:
            'Poori is a crispy, golden-fried flatbread made with whole wheat flour...',
      ),
    ],

    'lunch': [
      Food(
        id: 201,
        name: 'Gobi Fried Rice',
        imageUrl: 'https://4.bp.blogspot.com/-veSZXssN7TU/WceeZijN96I/AAAAAAAAbKg/5MOvKLRwUbMvHgPFf368aSuAcdI4ejY8gCEwYBhgL/s1600/9152.jpg',
        type: 'Lunch',
        price: 80.0,
        rating: 4.6,
        description: 'Spice up your lunch with Gobi Fried Rice! This Indo-Chinese dish is bursting with flavor...',
      ),
      Food(
        id: 202,
        name: 'Egg Fried Rice',
        imageUrl: 'https://img.freepik.com/premium-photo/egg-fried-rice-white-plate-white-background_864588-11982.jpg',
        type: 'Lunch',
        price: 80.0,
        rating: 4.7,
        description: 'Craving a quick and flavorful meal? Look no further than egg fried rice! Imagine fluffy, cooked rice stir-fried until slightly crispy...',
      ),
      Food(
        id: 203,
        name: 'Paneer Fried Rice',
        imageUrl: 'https://www.indianveggiedelight.com/wp-content/uploads/2023/09/paneer-fried-rice-featured.jpg',
        type: 'Lunch',
        price: 80.0,
        rating: 4.5,
        description: 'Paneer fried rice is a vibrant vegetarian twist on the classic dish. Tender paneer cubes, a mild Indian cheese, take center stage alongside fluffy cooked rice...',
      ),
      Food(
        id: 204,
        name: 'Chicken Biryani',
        imageUrl: 'https://www.shutterstock.com/image-photo/isolated-delicious-spicy-chicken-biryani-260nw-1374541937.jpg',
        type: 'Lunch',
        price: 100.0,
        rating: 4.8,
        description: 'Chicken biryani is a feast for the senses, a symphony of textures and flavors in a single dish. Imagine fluffy basmati rice, each grain separate and fragrant...',
      ),
      Food(
        id: 205,
        name: 'Chapati',
        imageUrl: 'https://t4.ftcdn.net/jpg/00/29/54/83/360_F_29548368_SV95QnONa3zEblEqmLZAWbXuYoVnD1UV.jpg',
        type: 'Lunch',
        price: 50.0,
        rating: 4.3,
        description: 'A staple across South Asia, chapati is a delightful flatbread with a simple soul...',
      ),
      Food(
        id: 206,
        name: 'Parotta',
        imageUrl: 'https://t4.ftcdn.net/jpg/03/22/27/43/360_F_322274314_MEln9YzXVGc35pXYz4hqkFzJzvGMgmvt.jpg',
        type: 'Lunch',
        price: 50.0,
        rating: 4.4,
        description: 'Imagine a flaky, layered flatbread with a hint of crisp. That\'s a parotta, a South Indian staple!...',
      ),
      Food(
        id: 207,
        name: 'Kothu Parotta',
        imageUrl: 'https://www.shutterstock.com/image-photo/kothu-parotta-very-popular-food-260nw-1440662171.jpg',
        type: 'Lunch',
        price: 75.0,
        rating: 4.6,
        description: 'Imagine a flavorful explosion in your mouth! Kothu parotta, a South Indian street food legend, is a symphony of textures and tastes...',
      ),
      Food(
        id: 208,
        name: 'Egg Kothu Parotta',
        imageUrl: 'https://www.sharmispassions.com/wp-content/uploads/2020/12/kothuparotta2.jpg',
        type: 'Lunch',
        price: 90.0,
        rating: 4.7,
        description: 'These golden beauties are then stir-fried with a spicy onion-tomato masala, creating a base rich with savory and aromatic flavors...',
      ),
      Food(
        id: 209,
        name: 'Gobi Manchurian',
        imageUrl: 'https://st3.depositphotos.com/5653638/16094/i/1600/depositphotos_160946158-stock-photo-gobi-manchurian-dry-popular-street.jpg',
        type: 'Lunch',
        price: 75.0,
        rating: 4.5,
        description: 'This popular Indo-Chinese dish features cauliflower florets dipped in a batter and deep-fried until golden brown...',
      ),
      Food(
        id: 210,
        name: 'Paneer Butter Masala',
        imageUrl: 'https://previews.123rf.com/images/alexrooss/alexrooss2306/alexrooss230602715/206339867-delicious-indian-paneer-tikka-masala-in-a-bowl-on-white-background-generative-ai.jpg',
        type: 'Lunch',
        price: 100.0,
        rating: 4.8,
        description: 'Paneer butter masala is a vegetarian\'s delight, offering a rich and creamy explosion of flavor...',
      ),
    ],

    'Snacks': [
      Food(
        id: 301,
        name: 'Samosa',
        imageUrl: 'https://static.vecteezy.com/system/resources/previews/010/913/987/large_2x/samosa-on-the-plate-and-white-background-photo.jpg',
        type: 'Snacks',
        price: 15.0,
        rating: 4.5,
        description: 'Imagine a crispy golden parcel filled with savory delights. That\'s a samosa! This popular South Asian snack features a flaky, fried pastry shell...',
      ),
      Food(
        id: 302,
        name: 'Puffs',
        imageUrl: 'https://img.freepik.com/premium-photo/puff-pastry-isolated-white-background_71632-6.jpg',
        type: 'Snacks',
        price: 15.0,
        rating: 4.4,
        description: 'Puffs are like little pockets of deliciousness, perfect for a satisfying snack or light meal. They\'re made with a flaky, buttery puff pastry crust...',
      ),
      Food(
        id: 303,
        name: 'Egg Puff',
        imageUrl: 'https://www.pngitem.com/pimgs/b/77-775941_puff-png.png',
        type: 'Snacks',
        price: 15.0,
        rating: 4.6,
        description: 'Egg Puffs are delightful pastries filled with a savory mixture of spiced scrambled eggs enclosed in a flaky pastry crust...',
      ),
    ],

    'Chat': [
      Food(
        id: 401,
        name: 'Pani Puri',
        imageUrl: 'https://t3.ftcdn.net/jpg/05/41/75/30/360_F_541753043_djeMLdRPzeLFuxoD89OWzoHolNKDGh0I.jpg',
        type: 'Chat',
        price: 50.0,
        rating: 4.7,
        description: 'These delicate puris are carefully filled with a mixture of mashed potato, chickpeas, and chopped onions...',
      ),
      Food(
        id: 402,
        name: 'Bhel Puri',
        imageUrl: 'https://t3.ftcdn.net/jpg/01/63/94/74/360_F_163947422_vB8Gpl9EGv2b4a4gsNJxxszkPtPfmbEY.jpg',
        type: 'Chat',
        price: 50.0,
        rating: 4.6,
        description: 'Bhel puri is a symphony of textures and flavors in a bite-sized package...',
      ),
      Food(
        id: 403,
        name: 'Sev Puri',
        imageUrl: 'https://www.shutterstock.com/image-photo/indian-spicy-chaat-item-sev-260nw-651228919.jpg',
        type: 'Chat',
        price: 50.0,
        rating: 4.5,
        description: 'Sev puri is a delightful explosion of textures and flavors in a bite-sized package...',
      ),
      Food(
        id: 404,
        name: 'Pav Bhaji',
        imageUrl: 'https://static.vecteezy.com/system/resources/previews/004/957/511/large_2x/indian-mumbai-street-style-pav-bhaji-garnished-with-peas-raw-onions-coriander-and-butter-spicy-thick-curry-made-of-out-mixed-vegetables-served-with-pav-over-white-background-with-copy-space-photo.jpg',
        type: 'Chat',
        price: 50.0,
        rating: 4.8,
        description: 'A thick, rich vegetable curry (bhaji) forms the base, simmered with tomatoes, onions, and a unique blend of spices...',
      ),
      Food(
        id: 405,
        name: 'Mixed Chat',
        imageUrl: 'https://t3.ftcdn.net/jpg/03/98/18/26/360_F_398182638_F09zPb5fE5CnM1qUEtJDiu9GRBaaGbAL.jpg',
        type: 'Chat',
        price: 75.0,
        rating: 4.7,
        description: 'Delightful explosion of textures and flavors, mixed chat is a true celebration of Indian street food...',
      ),
      Food(
        id: 406,
        name: 'Channa Samosa',
        imageUrl: 'https://www.cookwithmanali.com/wp-content/uploads/2019/09/Samosa-Chaat-500x500.jpg',
        type: 'Chat',
        price: 50.0,
        rating: 4.6,
        description: 'Imagine crispy, golden samosas, flaky pastry pockets filled with savory spiced chickpeas...',
      ),
      Food(
        id: 407,
        name: 'Dahi Samosa',
        imageUrl: 'https://media.istockphoto.com/id/1398144537/photo/curd-samosa-chaat.jpg?s=612x612&w=0&k=20&c=TXAOhd3V-Ad2TnYmKzz2ZBdOvSERy4XVvb0DXucpItw=',
        type: 'Chat',
        price: 50.0,
        rating: 4.8,
        description: 'Dahi Samosa Chaat is a symphony of textures and tastes in a bowl, perfect for a satisfying snack or light meal...',
      ),
    ],

    'Fresh Juice': [
      Food(
        id: 501,
        name: 'Watermelon Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP.veIQmdCPnD4rmjVtmXWovgAAAA?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.5,
        description: 'Refreshing and hydrating, watermelon juice is perfect for hot summer days. Enjoy the natural sweetness of fresh watermelon in every sip!',
      ),
      Food(
        id: 502,
        name: 'Orange Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP.nT0_j2wdtNdnuyFMbgSv5QHaIx?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.4,
        description: 'Start your day with a burst of Vitamin C! Freshly squeezed orange juice is a classic favorite, packed with citrusy goodness.',
      ),
      Food(
        id: 503,
        name: 'Kiwi Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP._RY0fkQd9sMHe6XqrCgxtgHaIh?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.3,
        description: 'Tangy and tropical, kiwi juice is a refreshing treat. Indulge in the vibrant green color and unique flavor of freshly blended kiwis.',
      ),
      Food(
        id: 504,
        name: 'Apple Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP.xKBCCIF3kve9vk6piN--sQHaFj?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.6,
        description: 'Crisp and sweet, apple juice is a timeless favorite. Savor the natural taste of ripe apples in every sip of this refreshing beverage.',
      ),
      Food(
        id: 505,
        name: 'Mango Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP.BXGP0fDS58YgeEv0qW8D0wHaIx?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.7,
        description: 'Experience the tropical delight of mangoes in a chilled glass. Mango juice is bursting with sunshine and sweet flavor.',
      ),
      Food(
        id: 506,
        name: 'Lemon Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP.gsaJVS4FZzMOVyp64wndawHaIh?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 30.0,
        rating: 4.4,
        description: 'Bright and zesty, lemon juice is a refreshing citrus beverage. Squeeze the day with this tangy and invigorating drink!',
      ),
      Food(
        id: 507,
        name: 'Mosambi Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP.SrCY8seMj33eiMBB28TxdQHaIY?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.5,
        description: 'Sweet and aromatic, mosambi (sweet lime) juice is a popular choice for its delightful flavor and natural sweetness.',
      ),
      Food(
        id: 508,
        name: 'Grape Juice',
        imageUrl: 'https://static.vecteezy.com/system/resources/previews/027/145/797/original/grapes-juice-drink-perfect-for-drink-catalog-ai-generated-png.png',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.3,
        description: 'Sip on the essence of grapes with this deliciously fruity grape juice. Enjoy the rich flavor and antioxidant benefits.',
      ),
      Food(
        id: 509,
        name: 'Pomegranate Juice',
        imageUrl: 'https://th.bing.com/th/id/OIP.GcdxbV6KSHpmgUtzxqMqlAHaH3?rs=1&pid=ImgDetMain',
        type: 'Fresh Juice',
        price: 50.0,
        rating: 4.6,
        description: 'Packed with antioxidants, pomegranate juice is as nutritious as it is delicious. Enjoy the sweet-tart flavor of fresh pomegranate seeds.',
      ),
    ],

    'South Indian': [
      Food(
        id: 601,
        name: 'Meals',
        imageUrl: 'https://img.freepik.com/premium-photo/national-food-india-with-white-background-high-q_889056-6602.jpg',
        type: 'South Indian',
        price: 90.0,
        rating: 4.7,
        description: 'This wholesome veggie platter features colorful bell peppers, crisp broccoli florets, and juicy cherry tomatoes. It\'s seasoned with aromatic herbs and spices, served over fluffy basmati rice. Simple, satisfying, and perfect for a light lunch or delightful dinner.',
      ),
      Food(
        id: 602,
        name: 'Tomato Rice',
        imageUrl: 'https://www.shutterstock.com/image-photo/spicy-tomato-rice-260nw-302496950.jpg',
        type: 'South Indian',
        price: 50.0,
        rating: 4.6,
        description: 'Tomato rice, also known as Thakkali Sadam in Tamil, is a vibrant and flavorful rice dish popular in South India. Imagine fluffy rice infused with a tangy and slightly spicy tomato masala...',
      ),
      Food(
        id: 603,
        name: 'Mint Rice',
        imageUrl: 'https://www.shutterstock.com/image-photo/mint-pudina-rice-spicy-indian-260nw-104297612.jpg',
        type: 'South Indian',
        price: 50.0,
        rating: 4.5,
        description: 'Mint rice, also known as Pudina Rice in India, is a refreshing and flavorful one-pot dish. Fragrant mint leaves are the star of the show, offering a cool and invigorating taste...',
      ),
      Food(
        id: 604,
        name: 'Sambar Rice',
        imageUrl: 'https://t4.ftcdn.net/jpg/04/97/27/31/360_F_497273192_FaNrcQGMMpQeBGitqp04l0XwwgXmvPmO.jpg',
        type: 'South Indian',
        price: 50.0,
        rating: 4.7,
        description: 'The star of the show is the sambar, a lentil stew bursting with tangy tamarind, aromatic spices, and earthy undertones. The rice absorbs the rich flavors of the sambar...',
      ),
      Food(
        id: 605,
        name: 'Curd Rice',
        imageUrl: 'https://i.pinimg.com/736x/95/91/db/9591db28fe4d9c3d0227692f23f2e17a.jpg',
        type: 'South Indian',
        price: 50.0,
        rating: 4.6,
        description: 'Steamed rice is combined with cool, creamy yogurt (curd) for a base that\'s both light and satisfying. The magic comes alive with a fragrant tempering of mustard seeds, curry leaves, and sometimes chilies...',
      ),
    ],
  };

  static List<Food> get getAllFoods {
    List<Food> allFoods = [];
    for (int i = 0; i < foodTypes.length; i++) {
      allFoods.addAll(foods[foodTypes[i]]!);
    }
    return allFoods;
  }
}