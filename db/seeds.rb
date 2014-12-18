# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  User.create(fname: 'Yin', lname: 'Mei', password: 'msyinmei', email: 'ms.yinmei@gmail.com')
  Event.create(eventname: 'West Coast Party', eventdatetime: '2014-12-18 5:00:00 -0800', eventlat: '37.790877', eventlng: '-122.401645', eventabout: 'about this event', user_id: 1)