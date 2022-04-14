//
//  RecipeModel.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 06/04/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id : String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name : String
    let image : String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all : [Recipe] = [
        Recipe(
            name: "Fruit Salad",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/fruit-salad-1.jpg",
            description: "Juicy, sweet, healthy and delicious, this tropical Fruit Salad is sure to become part of your regular summer recipe repertoire. Quick to prepare, easy to digest and packed with nutrients, fruit salads are perfect for this warmer weather.",
            ingredients: "Fruits (As much you need or available with you), DryFruits, Sweetners like pomegranate molasses, date syrup, palm sugar, coconut sugar or maple syrup",
            directions: "If using pomegranate, remove the arils first. I do this by placing halved pomegranates in a bowl of water and removing the arils in the water, Chop the nuts like 10 to 12 almonds, 10 to 12 cashews and 12 to 15 pistachios or any nuts that you prefer, Thoroughly rinse the fruits – 2 mangoes, 1 small papaya, 10 to 12 strawberries, 3 to 4 figs and 2 to 3 chikoo (a.k.a. sapota or sapodilla), Peel and chop the 2 bananas when you have completed chopping all the other fruits, Add the chopped fruits to a mixing bowl, Add the pomegranate arils, Now add the chopped or sliced nuts like cashews, pistachios, almonds or walnuts, Add honey, if using. (You can also opt to use vegan sweeteners like pomegranate molasses, date syrup, palm sugar, coconut sugar or maple syrup.), Gently mix the fruits very well, Serve fruit salad immediately for best results. I usually like to garnish mine with a few sprigs of mint leaves (when I have a stock) or a few nuts. Enjoy!",
            category: "Breakfast", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/fruit-salad-recipe/"
        ),
        Recipe(
            name: "Pav Bhaji",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/pav-bhaji-1.jpg",
            description: "Pav Bhaji is a hearty, delightsome, flavorful meal of mashed vegetable gravy with fluffy soft buttery dinner rolls served with a side of crunchy piquant onions, tangy lemon and herby coriander. Make this super delicious popular street food following my video and step-by-step guide. You will love this pav bhaji recipe for its Mumbai style flavors. I share the traditional method of making Mumbai Pav Bhaji and a quick Instant Pot recipe with step-by-step photos.",
            ingredients: "Mix Vegetables(like cauliflower, carrots, potatoes, capsicum and green peas), Green Peas, Butter, Pav (Dinner Rolls)",
            directions: "1. Rinse, peel and chop the veggies. You will need 1 cup chopped cauliflower, 1 cup chopped carrot, 3 medium sized potatoes (chopped) and ⅓ cup chopped french beans. 2. Add all the above chopped veggies in a 3 litre pressure cooker. Also add 1 cup green peas (fresh or frozen). 3. Add 2.25 to 2.5 cups water. 4. Pressure cook the veggies for 5 to 6 whistles or for about 12 minutes on medium heat. 5. When the pressure settles down on its own, open the cooker and check if the veggies are fork tender, softened and cooked well. 6. Heat a frying pan or kadai (wok). You can also use a large tawa or a skillet. Add 2 to 3 tablespoons butter. You can use amul butter or any brand of butter. The butter can be salted or unsalted. 7. Let the butter melt. 8. As soon as the butter melts, add 1 teaspoon cumin seeds. 9. Let the cumin seeds crackle and change their color. 10. Then add ½ cup chopped onions. 11. Mix onions with the butter and sauté on a low to medium heat. 12. Sauté until the onions turn translucent. 13. Add 2 teaspoons ginger-garlic paste. You can crush 1.5 inch ginger and 5 to 6 medium garlic cloves, in a mortar-pestle. 14. Mix and sauté for some seconds until the raw aroma of both ginger and garlic goes away. 15. Then add 1 to 2 green chilies (chopped). 16. Mix well. 17. Add 2 cups finely chopped tomatoes. Swap canned tomatoes if you do not have fresh tomatoes. Enjoy!",
            category: "Snack", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/pav-bhaji-recipe-mumbai-pav-bhaji-a-fastfood-recipe-from-mumbai/"
        ),
        Recipe(
            name: "Paneer Tikka",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2011/10/grilled-paneer-tikka.jpg",
            description: "Paneer Tikka is a popular and delicious tandoori snack where paneer (Indian cottage cheese cubes) are marinated in a spiced yogurt-based marinade, arranged on skewers and grilled in the oven, Tikka basically means anything that is marinated and then baked or grilled or fried and paneer tikka is a popular vegetarian tikka dish. This tasty homemade version is similar to the dish served in restaurants, but I would say actually tastes better!",
            ingredients: "Paneer (Indian cottage cheese),  Homemade Hung Curd or Hung Yogurt,Veggies(baby corn, mushrooms, cauliflower, tomatoes, broccoli and more.)",
            directions: "Barbecue: You can also cook the paneer tikka on barbecue grill.Grilling in the oven: In the oven grill for 15 to 20 minutes at 230 or 240 degree celsius with only the top heating element on. Basically here we are broiling the dish.Marination Time: It is best to marinate the paneer cubes for 2 hours or more. You can also keep the marinated paneer overnight in the fridge. Since I made the paneer tikka for dinner, I marinated the paneer and veggies for 2 hours in the refrigerator. The longer it marinates, the better flavors get infused into the paneer and veggies.Vegetables: The veggies used can be of your choice. In the step by step photos, I have used onions and green bell pepper (capsicum). In the video I have used red, yellow and green bell pepper with onions. You can use baby corn, mushrooms, cauliflower, tomatoes, broccoli etc. For cauliflower blanch them before marinating.Adding Oil: While grilling or baking, the paneer cubes and veggies can become dry. Oil is added to paneer and veggie mixture to prevent this from happening. The paneer cubes and veggies are also brushed with some oil to avoid them from becoming dry.Overcooking: Don’t overcook the paneer as they then become rubbery, dry and hard. The paneer should be soft, well cooked but also succulent. Enjoy!",
            category: "Snack", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/paneer-tikka-recipe-paneer-tikka/"
        ),
        Recipe(
            name: "Fruit Salad",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/fruit-salad-1.jpg",
            description: "Juicy, sweet, healthy and delicious, this tropical Fruit Salad is sure to become part of your regular summer recipe repertoire. Quick to prepare, easy to digest and packed with nutrients, fruit salads are perfect for this warmer weather.",
            ingredients: "Fruits (As much you need or available with you), DryFruits, Sweetners like pomegranate molasses, date syrup, palm sugar, coconut sugar or maple syrup",
            directions: "If using pomegranate, remove the arils first. I do this by placing halved pomegranates in a bowl of water and removing the arils in the water, Chop the nuts like 10 to 12 almonds, 10 to 12 cashews and 12 to 15 pistachios or any nuts that you prefer, Thoroughly rinse the fruits – 2 mangoes, 1 small papaya, 10 to 12 strawberries, 3 to 4 figs and 2 to 3 chikoo (a.k.a. sapota or sapodilla), Peel and chop the 2 bananas when you have completed chopping all the other fruits, Add the chopped fruits to a mixing bowl, Add the pomegranate arils, Now add the chopped or sliced nuts like cashews, pistachios, almonds or walnuts, Add honey, if using. (You can also opt to use vegan sweeteners like pomegranate molasses, date syrup, palm sugar, coconut sugar or maple syrup.), Gently mix the fruits very well, Serve fruit salad immediately for best results. I usually like to garnish mine with a few sprigs of mint leaves (when I have a stock) or a few nuts. Enjoy!",
            category: "Breakfast", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/fruit-salad-recipe/"
        ),
        Recipe(
            name: "Pav Bhaji",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/pav-bhaji-1.jpg",
            description: "Pav Bhaji is a hearty, delightsome, flavorful meal of mashed vegetable gravy with fluffy soft buttery dinner rolls served with a side of crunchy piquant onions, tangy lemon and herby coriander. Make this super delicious popular street food following my video and step-by-step guide. You will love this pav bhaji recipe for its Mumbai style flavors. I share the traditional method of making Mumbai Pav Bhaji and a quick Instant Pot recipe with step-by-step photos.",
            ingredients: "Mix Vegetables(like cauliflower, carrots, potatoes, capsicum and green peas), Green Peas, Butter, Pav (Dinner Rolls)",
            directions: "1. Rinse, peel and chop the veggies. You will need 1 cup chopped cauliflower, 1 cup chopped carrot, 3 medium sized potatoes (chopped) and ⅓ cup chopped french beans. 2. Add all the above chopped veggies in a 3 litre pressure cooker. Also add 1 cup green peas (fresh or frozen). 3. Add 2.25 to 2.5 cups water. 4. Pressure cook the veggies for 5 to 6 whistles or for about 12 minutes on medium heat. 5. When the pressure settles down on its own, open the cooker and check if the veggies are fork tender, softened and cooked well. 6. Heat a frying pan or kadai (wok). You can also use a large tawa or a skillet. Add 2 to 3 tablespoons butter. You can use amul butter or any brand of butter. The butter can be salted or unsalted. 7. Let the butter melt. 8. As soon as the butter melts, add 1 teaspoon cumin seeds. 9. Let the cumin seeds crackle and change their color. 10. Then add ½ cup chopped onions. 11. Mix onions with the butter and sauté on a low to medium heat. 12. Sauté until the onions turn translucent. 13. Add 2 teaspoons ginger-garlic paste. You can crush 1.5 inch ginger and 5 to 6 medium garlic cloves, in a mortar-pestle. 14. Mix and sauté for some seconds until the raw aroma of both ginger and garlic goes away. 15. Then add 1 to 2 green chilies (chopped). 16. Mix well. 17. Add 2 cups finely chopped tomatoes. Swap canned tomatoes if you do not have fresh tomatoes. Enjoy!",
            category: "Snack", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/pav-bhaji-recipe-mumbai-pav-bhaji-a-fastfood-recipe-from-mumbai/"
        ),
        Recipe(
            name: "Paneer Tikka",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2011/10/grilled-paneer-tikka.jpg",
            description: "Paneer Tikka is a popular and delicious tandoori snack where paneer (Indian cottage cheese cubes) are marinated in a spiced yogurt-based marinade, arranged on skewers and grilled in the oven, Tikka basically means anything that is marinated and then baked or grilled or fried and paneer tikka is a popular vegetarian tikka dish. This tasty homemade version is similar to the dish served in restaurants, but I would say actually tastes better!",
            ingredients: "Paneer (Indian cottage cheese),  Homemade Hung Curd or Hung Yogurt,Veggies(baby corn, mushrooms, cauliflower, tomatoes, broccoli and more.)",
            directions: "Barbecue: You can also cook the paneer tikka on barbecue grill.Grilling in the oven: In the oven grill for 15 to 20 minutes at 230 or 240 degree celsius with only the top heating element on. Basically here we are broiling the dish.Marination Time: It is best to marinate the paneer cubes for 2 hours or more. You can also keep the marinated paneer overnight in the fridge. Since I made the paneer tikka for dinner, I marinated the paneer and veggies for 2 hours in the refrigerator. The longer it marinates, the better flavors get infused into the paneer and veggies.Vegetables: The veggies used can be of your choice. In the step by step photos, I have used onions and green bell pepper (capsicum). In the video I have used red, yellow and green bell pepper with onions. You can use baby corn, mushrooms, cauliflower, tomatoes, broccoli etc. For cauliflower blanch them before marinating.Adding Oil: While grilling or baking, the paneer cubes and veggies can become dry. Oil is added to paneer and veggie mixture to prevent this from happening. The paneer cubes and veggies are also brushed with some oil to avoid them from becoming dry.Overcooking: Don’t overcook the paneer as they then become rubbery, dry and hard. The paneer should be soft, well cooked but also succulent. Enjoy!",
            category: "Snack", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/paneer-tikka-recipe-paneer-tikka/"
        ),
        Recipe(
            name: "Fruit Salad",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/fruit-salad-1.jpg",
            description: "Juicy, sweet, healthy and delicious, this tropical Fruit Salad is sure to become part of your regular summer recipe repertoire. Quick to prepare, easy to digest and packed with nutrients, fruit salads are perfect for this warmer weather.",
            ingredients: "Fruits (As much you need or available with you), DryFruits, Sweetners like pomegranate molasses, date syrup, palm sugar, coconut sugar or maple syrup",
            directions: "If using pomegranate, remove the arils first. I do this by placing halved pomegranates in a bowl of water and removing the arils in the water, Chop the nuts like 10 to 12 almonds, 10 to 12 cashews and 12 to 15 pistachios or any nuts that you prefer, Thoroughly rinse the fruits – 2 mangoes, 1 small papaya, 10 to 12 strawberries, 3 to 4 figs and 2 to 3 chikoo (a.k.a. sapota or sapodilla), Peel and chop the 2 bananas when you have completed chopping all the other fruits, Add the chopped fruits to a mixing bowl, Add the pomegranate arils, Now add the chopped or sliced nuts like cashews, pistachios, almonds or walnuts, Add honey, if using. (You can also opt to use vegan sweeteners like pomegranate molasses, date syrup, palm sugar, coconut sugar or maple syrup.), Gently mix the fruits very well, Serve fruit salad immediately for best results. I usually like to garnish mine with a few sprigs of mint leaves (when I have a stock) or a few nuts. Enjoy!",
            category: "Breakfast", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/fruit-salad-recipe/"
        ),
        Recipe(
            name: "Pav Bhaji",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/pav-bhaji-1.jpg",
            description: "Pav Bhaji is a hearty, delightsome, flavorful meal of mashed vegetable gravy with fluffy soft buttery dinner rolls served with a side of crunchy piquant onions, tangy lemon and herby coriander. Make this super delicious popular street food following my video and step-by-step guide. You will love this pav bhaji recipe for its Mumbai style flavors. I share the traditional method of making Mumbai Pav Bhaji and a quick Instant Pot recipe with step-by-step photos.",
            ingredients: "Mix Vegetables(like cauliflower, carrots, potatoes, capsicum and green peas), Green Peas, Butter, Pav (Dinner Rolls)",
            directions: "1. Rinse, peel and chop the veggies. You will need 1 cup chopped cauliflower, 1 cup chopped carrot, 3 medium sized potatoes (chopped) and ⅓ cup chopped french beans. 2. Add all the above chopped veggies in a 3 litre pressure cooker. Also add 1 cup green peas (fresh or frozen). 3. Add 2.25 to 2.5 cups water. 4. Pressure cook the veggies for 5 to 6 whistles or for about 12 minutes on medium heat. 5. When the pressure settles down on its own, open the cooker and check if the veggies are fork tender, softened and cooked well. 6. Heat a frying pan or kadai (wok). You can also use a large tawa or a skillet. Add 2 to 3 tablespoons butter. You can use amul butter or any brand of butter. The butter can be salted or unsalted. 7. Let the butter melt. 8. As soon as the butter melts, add 1 teaspoon cumin seeds. 9. Let the cumin seeds crackle and change their color. 10. Then add ½ cup chopped onions. 11. Mix onions with the butter and sauté on a low to medium heat. 12. Sauté until the onions turn translucent. 13. Add 2 teaspoons ginger-garlic paste. You can crush 1.5 inch ginger and 5 to 6 medium garlic cloves, in a mortar-pestle. 14. Mix and sauté for some seconds until the raw aroma of both ginger and garlic goes away. 15. Then add 1 to 2 green chilies (chopped). 16. Mix well. 17. Add 2 cups finely chopped tomatoes. Swap canned tomatoes if you do not have fresh tomatoes. Enjoy!",
            category: "Snack", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/pav-bhaji-recipe-mumbai-pav-bhaji-a-fastfood-recipe-from-mumbai/"
        ),
        Recipe(
            name: "Paneer Tikka",
            image: "https://www.vegrecipesofindia.com/wp-content/uploads/2011/10/grilled-paneer-tikka.jpg",
            description: "Paneer Tikka is a popular and delicious tandoori snack where paneer (Indian cottage cheese cubes) are marinated in a spiced yogurt-based marinade, arranged on skewers and grilled in the oven, Tikka basically means anything that is marinated and then baked or grilled or fried and paneer tikka is a popular vegetarian tikka dish. This tasty homemade version is similar to the dish served in restaurants, but I would say actually tastes better!",
            ingredients: "Paneer (Indian cottage cheese),  Homemade Hung Curd or Hung Yogurt,Veggies(baby corn, mushrooms, cauliflower, tomatoes, broccoli and more.)",
            directions: "Barbecue: You can also cook the paneer tikka on barbecue grill.Grilling in the oven: In the oven grill for 15 to 20 minutes at 230 or 240 degree celsius with only the top heating element on. Basically here we are broiling the dish.Marination Time: It is best to marinate the paneer cubes for 2 hours or more. You can also keep the marinated paneer overnight in the fridge. Since I made the paneer tikka for dinner, I marinated the paneer and veggies for 2 hours in the refrigerator. The longer it marinates, the better flavors get infused into the paneer and veggies.Vegetables: The veggies used can be of your choice. In the step by step photos, I have used onions and green bell pepper (capsicum). In the video I have used red, yellow and green bell pepper with onions. You can use baby corn, mushrooms, cauliflower, tomatoes, broccoli etc. For cauliflower blanch them before marinating.Adding Oil: While grilling or baking, the paneer cubes and veggies can become dry. Oil is added to paneer and veggie mixture to prevent this from happening. The paneer cubes and veggies are also brushed with some oil to avoid them from becoming dry.Overcooking: Don’t overcook the paneer as they then become rubbery, dry and hard. The paneer should be soft, well cooked but also succulent. Enjoy!",
            category: "Snack", datePublished: "13-04-2022",
            url: "https://www.vegrecipesofindia.com/paneer-tikka-recipe-paneer-tikka/"
        )
    ]
}
