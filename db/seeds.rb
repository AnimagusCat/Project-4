# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### CUISINE TYPES ######

Cuisine.create( :name => 'malay')
Cuisine.create( :name => 'indonesian')
Cuisine.create( :name => 'korean')
Cuisine.create( :name => 'japanese')
Cuisine.create( :name => 'chinese')
Cuisine.create( :name => 'indian')
Cuisine.create( :name => 'mexican')
Cuisine.create( :name => 'middle eastern')
Cuisine.create( :name => 'mediterranean')
Cuisine.create( :name => 'fast food')
Cuisine.create( :name => 'italian')
Cuisine.create( :name => 'swedish')
Cuisine.create( :name => 'western')
Cuisine.create( :name => 'thai')
Cuisine.create( :name => 'vietnamese')
Cuisine.create( :name => 'desserts')
Cuisine.create( :name => 'snacks')


##### USERS ##########

User.create( :email => 'user@email.com', :password => '123123', :name => '4 Fingers Crispy Chicken', :avatar => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575381890/roqmagv3f8siwkjzydoo.jpg' )
User.create( :email => 'user2@email.com', :password => '123123', :name => 'The Black Hole Group', :avatar => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575424760/qpiwwxtou9opnkcsjgui.jpg' )
User.create( :email => 'user3@email.com', :password => '123123', :name => 'McDonalds', :avatar => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575389519/cnjndipwervluyqolrc6.png' )
User.create( :email => 'user4@email.com', :password => '123123', :name => 'Swee Heng 1989 Bakery Café', :avatar => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575428742/y1skchow7nzpu35ptg94.jpg' )
User.create( :email => 'user5@email.com', :password => '123123', :name => 'Swensens Restaurant', :avatar => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575428824/ckryhbpefkza6djni9hr.jpg' )
User.create( :email => 'user6@email.com', :password => '123123', :name => 'Asyrafs Halal Corner', :avatar => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575429849/rviskix8wd60ryb146or.jpg' )
User.create( :email => 'user7@email.com', :password => '123123', :name => 'Akbar 24 Hours Restaurant', :avatar => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575430395/u2xy4khthdl3drcubbtm.jpg' )


###### OUTLETS ##############

Outlet.create( :user_id => 1, :name => '4 Fingers Crispy Chicken
', :logo => '', :block => '930
', :road => 'Yishun Avenue 2
', :building => 'Northpoint Shopping Centre
', :unit => '01-15
', :postal_code => '769098
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575448181/fxxpvswioy9jzmlfsh7c.jpg', :website => 'https://www.4fingers.com/Home-4FINGERS', :phone => '63387668
', :opening_hours => 'Daily: 11.00am to 10.00pm' )
Outlet.create( :user_id => 1, :name => '4 Fingers Crispy Chicken
', :logo => '', :block => '50
', :road => 'Jurong Gateway Road
', :building => 'JEM Shopping Mall
', :unit => '01-15A
', :postal_code => '608549
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575448181/fxxpvswioy9jzmlfsh7c.jpg', :website => 'https://www.4fingers.com/Home-4FINGERS', :phone => '63387668
', :opening_hours => 'Daily: 11.00am to 10.00pm' )
Outlet.create( :user_id => 1, :name => '4 Fingers Crispy Chicken
', :logo => '', :block => '80
', :road => 'Airport Boulevard
', :building => 'Changi Airport Terminal 1
', :unit => '03-47
', :postal_code => '819642
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575448181/fxxpvswioy9jzmlfsh7c.jpg', :website => 'https://www.4fingers.com/Home-4FINGERS', :phone => '63387668
', :opening_hours => 'Daily: 6am to 1am' )

# # ###### 2ND USER##########
Outlet.create( :user_id => 2, :name => 'Stack
', :logo => '', :block => '4
', :road => 'Jalan Klapa
', :building => '
', :unit => '
', :postal_code => '199316
', :dining_type => 'Cafe', :halal_type => 'Muslim Owned', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575448677/qd6rz3flvagxtl1rhalv.jpg', :website => '', :phone => '
', :opening_hours => 'Daily: 10am – 6pm
' )
Outlet.create( :user_id => 2, :name => 'Tipo Pasta Bar
', :logo => '', :block => '785
', :road => 'North Bridge Road
', :building => '
', :unit => '
', :postal_code => '198753
', :dining_type => 'Restaurant', :halal_type => 'Muslim Owned', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575449053/lmhg3jnd1pzcnfhceqf4.jpg', :website => 'https://www.tipo.sg/', :phone => '87680465
', :opening_hours => 'Daily: 12pm - 10pm
' )
Outlet.create( :user_id => 2, :name => 'The Mad Sailors British Kitchen
', :logo => '', :block => '24
', :road => 'Haji Lane
', :building => '
', :unit => '
', :postal_code => '189217
', :dining_type => 'Restaurant', :halal_type => 'Muslim Owned', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575426211/tevvgabfzog20adpesyr.jpg', :website => 'http://www.themadsailors.sg/', :phone => '87680465
', :opening_hours => 'Monday to Thursday: 12pm to 10pm, Friday, 12pm to 11pm Saturday: 10am to 11pm, Sunday: 10am to 10pm
' )
Outlet.create( :user_id => 2, :name => 'Afterwit Mexican Taqueria
', :logo => '', :block => '778
', :road => 'North Bridge Road
', :building => '
', :unit => '
', :postal_code => '198753
', :dining_type => 'Restaurant', :halal_type => 'Muslim Owned', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575428381/bndcg9i1moepgipw1wn7.jpg', :website => '', :phone => '62911773
', :opening_hours => 'Sunday to Thursday: 12pm to 10pm, Friday and Saturday: 12pm to 11pm
' )

###### 3RD USER ########
Outlet.create( :user_id => 3, :name => 'McDonalds
', :logo => '', :block => '10
', :road => 'Airport Boulevard
', :building => 'Changi Airport Terminal 4
', :unit => '02-204
', :postal_code => '819665
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575450556/ln6kscddienb8pjiwkgx.jpg', :website => 'https://www.mcdonalds.com.sg/', :phone => '63855081
', :opening_hours => 'Daily: 24hrs
' )
Outlet.create( :user_id => 3, :name => 'McDonalds
', :logo => '', :block => '3
', :road => 'Anson Road
', :building => 'Springleaf Tower
', :unit => '01-03
', :postal_code => '79909
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575450556/ln6kscddienb8pjiwkgx.jpg', :website => 'https://www.mcdonalds.com.sg/', :phone => '62218903
', :opening_hours => 'Daily: 24hrs
' )
Outlet.create( :user_id => 3, :name => 'McDonalds
', :logo => '', :block => '51
', :road => 'Ang Mo Kio Avenue 3
', :building => 'Ang Mo Kio Hub
', :unit => '01-04 51
', :postal_code => '569922
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575450556/ln6kscddienb8pjiwkgx.jpg', :website => 'https://www.mcdonalds.com.sg/', :phone => '64586218
', :opening_hours => 'Sun-Thu: 6am -2am, Fri, Sat & Eve of Public Holiday: 24H
' )
Outlet.create( :user_id => 3, :name => 'McDonalds
', :logo => '', :block => '200
', :road => 'Victoria Street
', :building => 'Bugis Junction
', :unit => '01-66
', :postal_code => '188024
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575450556/ln6kscddienb8pjiwkgx.jpg', :website => 'https://www.mcdonalds.com.sg/', :phone => '63393690
', :opening_hours => 'Daily: 7am - 12am
' )

########## 4TH USER ########
Outlet.create( :user_id => 4, :name => 'Swee Heng 1989 Bakery Café
', :logo => '', :block => '10
', :road => 'Eunos Road 8
', :building => 'Singapore Post Centre
', :unit => '01-66
', :postal_code => '188024
', :dining_type => 'Bakery', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575450736/bwj87yucxbjxo910hihj.jpg', :website => 'https://sweeheng1989.com.sg/bakery-cafe/', :phone => '66550300
', :opening_hours => 'Daily, 7am - 9pm
' )
Outlet.create( :user_id => 4, :name => 'Swee Heng 1989 Bakery Café
', :logo => '', :block => '63
', :road => 'Jurong West Central 3
', :building => '
', :unit => '03-31
', :postal_code => '648331
', :dining_type => 'Bakery', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575450736/bwj87yucxbjxo910hihj.jpg', :website => 'https://sweeheng1989.com.sg/bakery-cafe/', :phone => '66120300
', :opening_hours => 'Daily, 10am - 10pm
' )
########## 5TH USER #############
Outlet.create( :user_id => 5, :name => 'Swensens Restaurant
', :logo => '', :block => '53
', :road => 'Ang Mo Kio Avenue 3
', :building => 'Ang Mo Kio Hub
', :unit => '
', :postal_code => '569933
', :dining_type => 'Restaurant', :halal_type => 'Halal Certified', :menu => 'https://res.cloudinary.com/dqcbnnvt4/image/upload/v1575362803/q9hiixfnfbdcsjardbay.jpg', :website => 'https://www.swensens.com.sg/', :phone => '64814316
', :opening_hours => 'Weekdays: 10.30am-10.30pm, Weekends & PH: 8am-10.30pm
' )

######### CUISINE OUTLETS ##########

CuisineOutlet.create( :cuisine_id => 16, :outlet_id => 1)
Cuisines_outlets.create( :cuisine_id => 10, :outlet_id => 1)
Cuisines_outlets.create( :cuisine_id => 10, :outlet_id => 2)
Cuisines_outlets.create( :cuisine_id => 10, :outlet_id => 3)
Cuisines_outlets.create( :cuisine_id => 13, :outlet_id => 4)
Cuisines_outlets.create( :cuisine_id => 16, :outlet_id => 4)
Cuisines_outlets.create( :cuisine_id => 7, :outlet_id => 5)
Cuisines_outlets.create( :cuisine_id => 17, :outlet_id => 5)