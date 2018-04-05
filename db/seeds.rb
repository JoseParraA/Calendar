# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create(:name => 'Norman Lindsay', :email => 'norman@gmail.com', :password => 'chicken')
u2 = User.create(:name => 'Russell Drysdale', :email => 'russell@gmail.com', :password => 'chicken')
u3 = User.create(:name => 'James Gleeson', :email => 'russell@gmail.com', :password => 'chicken')


Event.destroy_all
e1 = Event.create(:title => 'Noodle Market', :date => '2018-02-22', :description => 'Have a dinner with friends', :time_zone => 'Sydney')
e2 = Event.create(:title => 'Java Workshop', :date => '2018-02-07', :description => 'Learn a bit about Java', :time_zone => 'Sydney')
e3 = Event.create(:title => 'Meeting', :date => '2018-06-07', :description => 'Monthly meeting at Canva', :time_zone => 'Sydney')
e4 = Event.create(:title => 'Festival', :date => '2018-03-09', :description => 'Folk festival (3 days)', :time_zone => 'Sydney')

Place.destroy_all
p1 = Place.create(:name => 'Home', :facilities => 'All', :time_zone => 'Sydney', :location => '4 Broome st, NSW Maroubra')
p2 = Place.create(:name => 'General Assembly', :facilities => 'Wifi, Coffee', :time_zone => 'Sydney', :location => '1 Market st 2000 Sydney')
p3 = Place.create(:name => 'Canva', :facilities => 'Wifi', :time_zone => 'Sydney', :location => '2 Lacey St, Surry Hills NSW 2010')
p4 = Place.create(:name => 'Hyde Park', :facilities => 'Bus, Train', :time_zone => 'Sydney', :location => '281 Elizabeth St, Sydney NSW 2000')
p5 = Place.create(:name => 'Westfield', :facilities => 'Wifi, bus, train', :time_zone => 'Sydney', :location => 'Pitt St & Market St, Sydney NSW 2000')


u1.events << e1 << e2
u2.events << e3 << e4

p1.events << e1
p1.events << e2
p2.events << e3
p5.events << e4
