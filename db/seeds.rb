# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create({
		name: "Carnitas Pizza",
		photo: "https://lh3.googleusercontent.com/ErEbRzqXMNwwfGJfj_wzXlB3t8_Jvj1eR4GJYnTec4l7ErCBbjgZJTJTHDg8PA29tActzpJRERQZJaqyAOrN-w=s360",
		source_url: "http://wholemadeliving.com/carnitas-pizza-salsa-verde/",
		labels: ["Italian"],
		serving_size: 4,
		ingredients: [
			"1/2 of our Pizza Dough Recipe",
			"1 cup Salsa Verde",
			"3/4 -1 cup mozzarella cheese, shredded (we use 3/4 cup, but if you like it cheesier, add a tad more)",
			"1 cup Carnitas, shredded",
			"1/4 cup queso fresco cheese, crumbled (semi-soft mexican cheese)",
			"1-2 Tbsp extra virgin olive oil for dough and carnitas"
		],
		instructions: [
			"Pre-heat oven to 500 degrees",
			"Carefully transfer pizza dough to upside down sheet pan",
			"Drizzle a little olive oil onto the edges of the pizza and spread the oil with your fingers about 1 inch around the edge making sure to cover that 1 edge strip all the way to the very edges.",
			"Spoon out some salsa verde onto the dough and gently spread the sauce to about 1/2 inch away from the edges.",
			"Now sprinkle the mozzarella over the salsa verde, spreading it evenly throughout",
			"Toss carnitas with1 Tbsp of olive oil to just lightly coat, then spread the carnitas evenly over the mozzarella",
			"Lastly sprinkle the queso fresco over the carnitas",
			"Place topped pizza into pre-heated oven on the middle rack and bake for 8 minutes, watching closely",
			"After the 8 minutes are up, check to see that the pizza will slide off the pan. (Use a spatula to carefully try to unstick the pizza from the pan and slide it gently directly onto the oven rack.",
			"Bake another 2-3 minutes, watching the pizza closely to avoid burning.",
			"Once out of the oven, let the pizza rest at least a couple minutes before slicing and then enjoy!"
		],
		description: "Give this delectable carnitas pizza a try and let us know what you think.  It’s a keeper for sure!"
	})