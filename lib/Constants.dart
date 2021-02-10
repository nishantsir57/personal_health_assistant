import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Constants
{
  static String _email;
  static String _password;
  static String _name;
  static String _phone;
  static String _confirmPassword;
  static String _weight;
  static String _heightFeet;
  static String _heightInches;
  static String _age;
  static String _targetWeight;
  static Map<String, List<String>> _diet;
  static List<String> _d1;
  static List<String> _d2;
  static List<String> _d;
  static int _slotSelected;
  static var _image;
  static List<QueryDocumentSnapshot> _appointments;


  static List<QueryDocumentSnapshot> get appointments => _appointments;

  static set appointments(List<QueryDocumentSnapshot> value) {
    _appointments = value;
  }

  static get image => _image;
  static set image(value) => _image=value;

  static int get slotSelected => _slotSelected;

  static set slotSelected(int value) {
    _slotSelected = value;
  }

  static List<String> get d => _d;

  static set d(List<String> value) {
    _d = value;
  }

  static List<String> get d1 => _d1;

  static set d1(List<String> value) {
    _d1 = value;
  }

  static Map<String, List<String>> get diet => _diet;
  static Map<String, String> _exercise;
  static set diet(Map<String, List<String>> value) {
    _diet = value;
  }


  static Map<String, List<String>> _weightGainDiet={
    'monday' : ["Toasted wholegrain bread+ 2 tbsp peanut butter. Drizzle with honey to taste. Serve with 1 hot chocolate, made with milk + 1 serve of fruit (eg. 1 medium pear or orange)", "Cooked chicken/1 cup leafy green vegetables (eg. spinach, rocket) + pasta + tomato + avocado + crumbled feta cheese + olive oil/vinegar dressing", "Lamb chop/buckwheat, trimmed & shallow fried in olive oil. Serve with sweet potato mash made with milk and olive oil + 2 cups cooked vegetables"],
    'tuesday' : ["2 tbsp chia seeds + rolled oats + 1.5 cup full cream milk + 1 serve of fruit (eg. 1 medium banana or 6 dried prunes)", "2 boiled & mashed eggs + 2 cheese slices + avocado + 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum) rolled up in tortilla bread (make 2 wraps) + 1 cup fruit juice", "Baked Salmon, Cous Cous and Vegetables: Oven baked salmon fillet, sprinkled with sesame oil and sesame seeds + wholemeal cous cous + 2 cups cooked vegetables. Serve with hommus"],
    'wednesday' : ["Sweet Potato Spanish Omelette (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk", "Lentil, Vegetables and Barley Soup: Lentils with 1 cup chopped vegetables (eg. carrot, pumpkin, celery, onion), vegetable stock and barley. Serve with dollop of natural yoghurt. + 1 serve of fruit", "Spaghetti Bolognese: Lean mince with tomato, tomato puree, herbs & garlic served on spaghetti and sprinkled with cheese + 1 cup salad (eg. baby spinach, carrots, cucumber) with olive oil based dressing"],
    'thursday' : ["Wholegrain Cereal with Milk and Fruit: Wholegrain flaky cereal + full cream milk + 2 tbsp linseeds + 1 serve of fruit (eg. 6 dried apricot halves or 4 small plums)", "Chicken and Noodle Stir-fry: Sliced lean chicken + Hokkein noodles + 1 cup vegetables (eg. beans, capsicum, spinach, carrot) cooked in sesame oil + sweet soy sauce dressing. Sprinkle with sesame seeds", "Nasi Goreng Tray Bake (1 serve): Serve with 2 cup mixed salad vegetables"],
    'friday' : ["Poached Eggs with Sauteed Field Mushroom and Avocado (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk", "Fish and Chips: Dip fish fillets in flour, egg then breadcrumbs and shallow fry in canola oil. Serve with homemade thick potato chunky chips, lemon wedges and 2 cups mixed salad vegetables with olive oil dressing. + 1 serve of fruit", "Mango Chicken and Corn: Grilled chicken thighs served with mango salsa, corn on the cob & 1.5 cups baked vegetables (eg. carrot, onion, beans) in olive oil"],
    'saturday' : ["Fruit Toast with Berry Smoothie: Slices of fruit toast spread with butter and/or jam to taste. Serve with a smoothie made with 1 cup full cream milk + 1 cup berries + 2 tbsp linseed/sunflower/almond meal", "Tuna and Quinoa Salad: Tuna in oil mixed with 3 bean mix + 2 cups salad vegetables (eg. leafy greens, tomato, cucumber, carrot, capsicum) + cooked quinoa + olive oil/vinegar dressing", "Easy Fish Pie: Serve with 2 cup mixed salad vegetables"],
    'sunday' : ["Bechamel Spinach Baked Egg (1 serve): Serve with 1 café latte", "Beef and Noodle Soup: Thinly sliced beef + fresh flat rice noodles + 1 cup vegetables (eg. bean sprouts, carrot, broccoli) cooked in vegetable stock. Sprinkle with diced green onion. + 1 serve of fruit (eg. 1 medium apple or banana)", "Pork Roast and Vegetables: Lean pork roast + baked potato + 1.5 cups baked vegetables + olive oil (for cooking)"]
  };
  static Map<String, String> _weightGainExercise={
    'monday' : "2 x of Push ups \n 2 x Pike Push ups or Hindu Push ups",
    'tuesday' : "2 x Bodyweight Squat\n 2 x Squat Jump",
    'wednesday' : "2 x Triceps Dip \n 6 x Pull ups",
    'thursday'  : "2 x Lunge \n 2 x Standing calf raise",
    'friday' : "3 x Ab Circuits",
    'saturday' : "3 x Burpee",
    'sunday' : "Rest Day"
  };
  static Map<String, List<String>> _weightLossDiet={
    'monday' : ["Wholegrain Cereal and Milk: 1 cup wholegrain flaky cereal + 1 cup skim milk", "Chicken Salad & Roll: ½ chicken breast (skin removed) +1 slice reduced fat cheese + 2 cups salad vegetables (eg. lettuce, carrot, tomato, cucumber) + 1 grainy bread roll + 1/4 avocado spread", "Beef Stir-fry: 120g lean beef + 1.5 cups cooked vegetables (eg. carrot, mushroom, celery, capsicum, snow peas) + 1 cup cooked brown rice + 2 tsp sesame oil for cooking"],
    'tuesday' : ["English Muffin and Fruit: 1 wholegrain toast English muffin + ½ tbsp peanut butter + 1 average piece of fruit", "Rainbow Rice Salad: Mix together 90g canned salmon + 1/3 cup chickpeas + reduced fat crumbled feta cheese + 2 cups salad vegetables (eg. capsicum, carrot, snow peas, rocket) + 1 cup cooked brown rice", "rawn and Kimchi Omelette (1 serve): Served with 2 cup salad and 1 slice wholegrain bread"],
    'wednesday' : ["Yoghurt and Fruit: 1 tub (200g) low fat/no added sugar yoghurt + 1 serve of fruit (eg. 2 nectarines or 200mL fruit juice or 1 apple)", "Tuna Salad Sandwich: 200g tinned tuna in springwater (drained) + 2 cups salad vegetables (eg. lettuce, cucumber, tomato) + 2 tbsp avocado + 1 slice cheese + 2 slices multigrain bread", "Pork Chops and Vegetables: 120g lean grilled pork chops + 1 medium baked potato + 1.5 cups cooked vegetables (eg. carrot, squash, broccoli) + 2 tsp oil in cooking or as a dressing"],
    'thursday' : ["Avocado on Toast: 2 tbsp mashed avocado on 2 slices multigrain bread (toasted) + 1 serve of fruit (2 kiwi fruit or 2 apricots or 1 pear)", "Chickpea, Vegetable and Barley Soup: ¾ cup chickpeas + 1 cup cooked vegetables (eg. tomato, celery, onion, carrot, spinach) + ½ cup cooked barley", "Beef Ramen (1 serve): Served with additional 2 cup cooked vegetables"],
    'friday' : ["Porridge with Fruit: ½ cup rolled oats + 2 cups berries (NB: porridge made with water + 0.5 cup skim milk)", "Tofu Miso Soup (1 serve): Served with 2 cups salad + 2 tsp balsamic vinegar", "Grilled Chicken and Vegetables: 100g grilled chicken + 1.5 cups vegetables (eg. carrot, broccoli, eggplant) + 1 medium corn on the cob + 2 tsp oil in cooking or as a dressing"],
    'saturday' : ["Muesli and Milk with Added Fruit: 1 cup muesli cereal + 1 cup low fat milk + 1 banana", "Homemade Chicken Burger: 100g grilled chicken + 2 cups salad vegetables (eg. lettuce, cucumber, tomato) + 2 tbsp avocado + 1 grainy bread roll", "Lamb Chop with Mash and Vegetables: 1 large grilled lamb chop (fat trimmed) + 1 medium potato (mashed with 3 tsp margarine + a splash skim milk) + 1.5 cups vegetables (eg. carrot, pumpkin, broccoli)"],
    'sunday' : ["Scrambled Eggs on Sourdough: 2 eggs (scrambled) + 2 slices sourdough bread (toasted) + 3 tsp margarine or 2 tbsp avocado + 1 average piece of fruit", "Cheese, Avocado and Salad Sandwich: 40g reduced fat hard cheese + 2 cups salad vegetables (eg. lettuce, carrot cucumber, tomato, capsicum) + 2 tbsp avocado + 2 slices multigrain bread", "Grilled Salmon and Vegetables: 125g salmon + 1 cup cooked brown rice + 1.5 cups steamed vegetables (eg. cauliflower, broccoli, squash)"]
  };

  static Map<String, String> get weightGainExercise => _weightGainExercise;

  static set weightGainExercise(Map<String, String> value) {
    _weightGainExercise = value;
  }

  static Map<String, String> _weightLossExercise={
    'monday' : "1. Leg Raise \n 2. Plank \n 3. Hip Extensions left side \n 4. Hip Extensions right side \n 5. March in Place",
    'tuesday' : "1. Military Press \n 2. Plié/Sumo Squat \n 3. Stiff Legged Deadlift with Dumbbells \n 4. Heel Touches, \n 5. High Knees in Place",
    'wednesday' : "1. Goblet Squat \n 2. Knee Touches in Place \n 3. Tricep Kickbacks \n 4. Rear Leg Extension left leg \n 5. Rear Leg Extension right leg",
    'thursday' : "Rest Day – Take a brisk 30 minute walk",
    'friday' : "1. March in Place \n 2. Traditional Crunch \n 3. Chair Squat \n 4. Wall Push-Up \n 5. Bodyweight Glute Bridge",
    'saturday' : "1. Toe Reach \n 2. Alternating Lunges \n 3. Lying Oblique Twist \n 4. Body Weight Squat \n 5. High Knees in Place",
    'sunday' : "1. Russian/Mason Twist \n 2. Knee Push-Ups \n 3. Alternating Reverse Lunge \n 4. Reverse Crunch \n 5. Knee Touches in Place"
  };


  static Map<String, List<String>> get weightGainDiet => _weightGainDiet;

  static set weightGainDiet(Map<String, List<String>> value) {
    _weightGainDiet = value;
  }

  static String get targetWeight => _targetWeight;

  static set targetWeight(String value) {
    _targetWeight = value;
  }

  static String get age => _age;

  static set age(String value) {
    _age = value;
  }

  static String get heightFeet => _heightFeet;

  static set heightFeet(String value) {
    _heightFeet = value;
  }

  static String get weight => _weight;

  static set weight(String value) {
    _weight = value;
  }

  static String get confirmPassword => _confirmPassword;

  static set confirmPassword(String value) {
    _confirmPassword = value;
  }

  static String get email => _email;

  static set email(String value) {
    _email = value;
  }

  static String get password => _password;

  static String get phone => _phone;

  static set phone(String value) {
    _phone = value;
  }

  static String get name => _name;

  static set name(String value) {
    _name = value;
  }

  static set password(String value) {
    _password = value;
  }

  static String get heightInches => _heightInches;

  static set heightInches(String value) {
    _heightInches = value;
  }


  static Map<String, List<String>> get weightLossDiet => _weightLossDiet;

  static set weightLossDiet(Map<String, List<String>> value) {
    _weightLossDiet = value;
  }

  static Map<String, String> get weightLossExercise => _weightLossExercise;

  static set weightLossExercise(Map<String, String> value) {
    _weightLossExercise = value;
  }

  static Map<String, String> get exercise => _exercise;

  static set exercise(Map<String, String> value) {
    _exercise = value;
  }

  static List<String> get d2 => _d2;

  static set d2(List<String> value) {
    _d2 = value;
  }
}