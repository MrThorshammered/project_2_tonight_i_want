# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.delete_all
Recipe.delete_all

c1 = Country.create!(name: 'English', image: 'http://www.secondworldwarhistory.com/imgs/flags/britain.jpg')
c2 = Country.create!(name: 'Irish', image: 'http://www.canadanne.co.uk/images/flag_ireland.gif')
c3 = Country.create!(name: 'Indian', image: 'http://www.overland-underwater.com/media/flags/india_flag_small.gif')
c4 = Country.create!(name: 'Chinese', image: 'http://web.law.columbia.edu/sites/default/files/microsites/climate-change/images/Resources/Climate-Change-Laws-of-the-World/china_flag.jpg')


r1 = Recipe.create!(name:'Bangers and mash', method:'Boil potatoes, mash, make a gravy, cook sausages, serve all three', image:'http://www.719woman.com/wp-content/uploads/2014/03/bangers-and-mash-1.jpg', country_id:c1.id)
r2 = Recipe.create!(name:'Full Irish', method:'cook ingredients', image:'https://dbsirishstudies.files.wordpress.com/2013/07/real-full-iris-breakfast1.jpg', country_id:c1.id)
r3 = Recipe.create!(name:'korma', method:'cook ingredients', image:'http://realfood.tesco.com/media/images/085797-HERO-93966f43-758c-469e-b8d3-b884c134b974-0-472x310.jpg', country_id:c1.id)
r4 = Recipe.create!(name:'sweet and sour hong kong style', method:'cook ingredients', image:'http://www.goldencitycrawley.co.uk/images/sweet&sour3.jpg', country_id:c1.id)

