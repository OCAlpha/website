# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 payment_types = PaymentType.create([{type: 'Cash'}, {type: 'Check'}])
 offices = Office.create([{title: 'President', budget: 150}, {title: 'Vice President', budget: 800},
                          {title: 'Treasurer', budget:   0}, {title: 'Spring Sing', budget: 800},
                          {title: 'Secretary', budget: 200}, {title: 'Athletics', budget: 50},
                          {title: 'Chaplain',  budget: 150}, {title: 'Social Service', budget: 150},
                          {title: 'Historian', budget: 150}, {title: 'Rush Activities', budget: 800}])
 charge_types = ChargeType.create([{category: 'Fall Dues', value: 40}, {category: 'Spring Dues', value: 40},
                                   {category: 'Rush Shirt', value: 15}, {category: 'Fall Banquet', value: 15},
                                   {category: 'Spring Banquet', value: 45}, {category: 'Misc. Tshirt', value: 5},
                                   {category: 'Water Bottle', value: 6}, {category: 'Vinyl Decal', value: 2},
                                   {category: 'Purchase for Office', value: 0}, {category: 'Dog tag', value: 0},
                                   {category: 'Hoodie', value: 30}, {category: 'Alpha Mug', value: 8}])
 officers = User.create([{name: 'Chris Rich', email: 'christopher.rich@eagles.oc.edu', password: 'president', password_confirmation: 'president'},
                         {name: 'Justin Bullard', email: 'justin.bullard@eagles.oc.edu', password: 'vicepresident', password_confirmation: 'vicepresident'},
                         {name: 'Tyler Wilson', email: 'tyler.wilson@eagles.oc.edu', password: 'treasurer', password_confirmation: 'treasurer'},
                         {name: 'Bryan Nix', email: 'bryan.nix@eagles.oc.edu', password: 'springsing', password_confirmation: 'springsing'},
                         {name: 'Charlie O\'Hara', email: 'charles.ohara@eagles.oc.edu', password: 'secretary', password_confirmation: 'secretary'},
                         {name: 'Athletic Director', email: 'sergeant-at-arms@agoknights.com',password:'athletic',password_confirmation: 'athletic'},
                         {name: 'David Lopez', email: 'david.lopez@eagles.oc.edu', password:'chaplain', password_confirmation: 'chaplain'},
                         {name: 'John Gause', email: 'jonathan.gause@eagles.oc.edu', password:'service', password_confirmation: 'service'},
                         {name: 'Drew Binkley', email: 'drew.binkley@eagles.oc.edu', password: 'historian', password_confirmation: 'historian'},
                         {name: 'Ryan Hinds', email: 'ryan.hinds@eagles.oc.edu', password: 'rushdirector', password_confirmation: 'rushdirector'}])
accounts = Account.create([{name: 'Cash box'}, {name: 'Checking Account'}, {name: 'Paypal'}])

