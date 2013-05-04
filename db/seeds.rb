# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 payment_types = PaymentType.create([{name: 'Cash'}, {name: 'Check'}])
 offices = Office.create([  {title: 'President',        budget: 150, officer_id: 1},
                            {title: 'Vice President',   budget: 800, officer_id: 2},
                            {title: 'Treasurer',        budget:   0, officer_id: 3},
                            {title: 'Spring Sing',      budget: 800, officer_id: 4},
                            {title: 'Secretary',        budget: 200, officer_id: 5},
                            {title: 'Athletic Director',budget: 50,  officer_id: 6},
                            {title: 'Chaplain',         budget: 150, officer_id: 7},
                            {title: 'Social Service',   budget: 150, officer_id: 8},
                            {title: 'Historian',        budget: 150, officer_id: 9},
                            {title: 'Rush Director',    budget: 800, officer_id: 10}])
 charge_types = ChargeType.create([{category: 'Fall Dues',        value: 40, office_id: 3},
                                   {category: 'Spring Dues',      value: 40, office_id: 3},
                                   {category: 'Rush Shirt',       value: 15, office_id: 10},
                                   {category: 'Fall Banquet',     value: 15, office_id: 2},
                                   {category: 'Spring Banquet',   value: 45, office_id: 2},
                                   {category: 'Misc. Tshirt',     value: 5,  office_id: 2},
                                   {category: 'Water Bottle',     value: 6,  office_id: 3},
                                   {category: 'Vinyl Decal',      value: 2,  office_id: 3},
                                   {category: 'Dog tag',          value: 0,  office_id: 1},
                                   {category: 'Spring Sing Dues', value: 25, office_id: 4},
                                   {category: 'Hoodie',           value: 30, office_id: 2},
                                   {category: 'Alpha Mug',        value: 8,  office_id: 2}])
 officers = User.create([{name: 'Chris Rich',         email: 'christopher.rich@eagles.oc.edu',  password: 'president',      password_confirmation: 'president'    },
                         {name: 'Justin Bullard',     email: 'justin.bullard@eagles.oc.edu',    password: 'vicepresident',  password_confirmation: 'vicepresident'},
                         {name: 'Tyler Wilson',       email: 'tyler.wilson@eagles.oc.edu',      password: 'treasurer',      password_confirmation: 'treasurer'    },
                         {name: 'Bryan Nix',          email: 'bryan.nix@eagles.oc.edu',         password: 'springsing',     password_confirmation: 'springsing'   },
                         {name: 'Charlie OHara',    email: 'charles.ohara@eagles.oc.edu',     password: 'secretary',      password_confirmation: 'secretary'    },
                         {name: 'Athletic Director',  email: 'sergeant-at-arms@agoknights.com', password:'athletic',        password_confirmation: 'athletic'     },
                         {name: 'David Lopez',        email: 'david.lopez@eagles.oc.edu',       password:'chaplain',        password_confirmation: 'chaplain'     },
                         {name: 'John Gause',         email: 'jonathan.gause@eagles.oc.edu',    password:'service',         password_confirmation: 'service'      },
                         {name: 'Drew Binkley',       email: 'drew.binkley@eagles.oc.edu',      password: 'historian',      password_confirmation: 'historian'    },
                         {name: 'Ryan Hinds',         email: 'ryan.hinds@eagles.oc.edu',        password: 'rushdirector',   password_confirmation: 'rushdirector' }])
accounts = Account.create([{name: 'Cash box'}, {name: 'Checking Account'}, {name: 'Paypal'}])

