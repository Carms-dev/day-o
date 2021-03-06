require 'faker'

puts 'seeding'

#clear db
EarnedBadge.destroy_all
Badge.destroy_all
ActionCategory.destroy_all
Category.destroy_all
Action.destroy_all
Challenge.destroy_all
User.destroy_all

# Categories
plastic = Category.create!(name: 'Plastic', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/plastic_1_vhcmqa.svg")
diet    = Category.create!(name: 'Diet', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/healthy-food_kopxt4.svg")
travel  = Category.create!(name: 'Travel', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438641/icons/aircraft_qx4lui.svg")
commute = Category.create!(name: 'Commute', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438877/icons/bike_1_osxcrs.svg")
energy  = Category.create!(name: 'Energy', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/solar-energy_xqk7oo.svg")
waste   = Category.create!(name: 'Waste', icon: "https://res.cloudinary.com/dhc2cbdw0/image/upload/v1583438643/icons/jar_2_evcvpa.svg")

# creating badges
plastic_badge = Badge.create!(name: 'Plastic', color: '#09A66D')
diet_badge = Badge.create!(name: 'Diet', color: '#B29DC8')
travel_badge = Badge.create!(name: 'Travel', color: '#94514C')
commute_badge = Badge.create!(name: 'Commute', color: '#FB7429')
energy_badge = Badge.create!(name: 'Energy', color: '#ECD0B4')
waste_badge = Badge.create!(name: 'Waste', color: '#FFB672')


# for buddy challenge demo
nine_five = Challenge.create!(name: '9-fivers', num_days: 5, difficulty: 1)
coffee_diet = Action.create!(title: "Oat milk in AM coffee",
                            description: "That cup of coffee’s footprint just got cut by ~50%! Try Oat milk! It's delicous!",
                            impact: 30,
                            challenge: nine_five)
vegan_diet = Action.create!(title: "Vegan Tuesday!",
                            description: 'Vegan restaurants has beeen spreading like wild fire! Go explore and enjoy!',
                            impact: 600,
                            challenge: nine_five)
printer = Action.create!(title: "Refrain from printing",
                            description: 'millions of trees gets chop down every day',
                            impact: 200,
                            challenge: nine_five)
electronics_energy = Action.create!(title: "Day-end: Shut gadgets off",
                                    description: "A computer that is on for 8 hours a day emits 175 kg of CO2 per year.",
                                    impact: 450,
                                    challenge: nine_five)
beer_diet = Action.create!(title: "Local beer @5a7",
                            description: "300g CO2e: locally brewed cask ale at the pub vs. 500g CO2e: local bottled beer from a shop or foreign beer in a pub",
                            impact: 200,
                            challenge: nine_five)

ActionCategory.create!(action: coffee_diet, category: diet)
ActionCategory.create!(action: vegan_diet, category: diet)
ActionCategory.create!(action: printer, category: waste)
ActionCategory.create!(action: electronics_energy, category: energy)
ActionCategory.create!(action: beer_diet, category: diet)

# 1st Challenge that you completed
starter = Challenge.create!(name: 'Starter Pack', num_days: 7, difficulty: 1)
bottle_plastic = Action.create!(title: "Reusable Water Bottle",
              description: "1 million bottles are bought every min, according to some studies.",
              impact: 83,
              challenge: starter)
tupperware_plastic = Action.create!(title: "Tupperware for takeouts",
              description: "2.2 billion take-out containers being used each year in EU alone.",
              impact: 150,
              challenge: starter)
flexi_diet = Action.create!(title: "Prep Flexitarian meal",
              description: 'Checkout this awesome app called "began"!',
              impact: 400,
              challenge: starter)
bag_plastic = Action.create!(title: 'Wanna Bag? No!',
              description: "An average plastic grocery bag weighs 5.5 grams therefore 1 kg of plastic contains approximately 180 bags",
              impact: 33,
              challenge: starter)
local_diet = Action.create!(title: "Look up Bulk Store",
              description: "and Farmer's market while you are at it!",
              impact: 100,
              challenge: starter)
grocery_diet = Action.create!(title: 'Grocery Shop: 1 Less Meat',
              description: 'for 1 plant-based protein',
              impact: 300,
              challenge: starter)
repair_waste = Action.create!(title: 'Repair instead of buying new',
              description: "Reach out to somebody in your community that can teach you it to fix it?",
              impact: 800,
              challenge: starter)

ActionCategory.create!(action: bottle_plastic, category: plastic)
ActionCategory.create!(action: tupperware_plastic, category: plastic)
ActionCategory.create!(action: flexi_diet, category: diet)
ActionCategory.create!(action: bag_plastic, category: plastic)
ActionCategory.create!(action: local_diet, category: diet)
ActionCategory.create!(action: grocery_diet, category: diet)
ActionCategory.create!(action: repair_waste, category: waste)

# 2nd Challenge that you completed
activism = Challenge.create!(name: 'Enviro Activism 101', num_days: 5, difficulty: 3)
docum = Action.create!(title: 'Watch an eco documentary',
              description: "Watch an eco documentary (How about Cowspiracy) ",
              impact: 0,
              challenge: activism)
sustain = Action.create!(title: 'Sustainability Talk',
              description: "######",
              impact: 0,
              challenge: activism)
group_check = Action.create!(title: 'Check out local enviro group',
              description: "######",
              impact: 0,
              challenge: activism)
indigenous = Action.create!(title: 'Indigenous Solidarity',
              description: "######",
              impact: 0,
              challenge: activism)
renew = Action.create!(title: 'Renew your commitment',
              description: "######",
              impact: 0,
              challenge: activism)

# 3rd challenge that you completed
student = Challenge.create!(name: 'Student Hack', num_days: 7, difficulty: 2)
light_energy = Action.create!(title: 'Switch to LED Lights',
              description: "Try to switch your bulbs to energy-efficient compact fluorescent (CFLs) or LED bulbs.",
              impact: 300,
              challenge: student)
power_energy = Action.create!(title: "Get eTextbooks",
              description: "When you’re not using appliances or you’re not in a room, turn off lights and other electronics.",
              impact: 300,
              challenge: student)
bag_plastic = Action.create!(title: 'Use grocery bag',
              description: "An average plastic grocery bag weighs 5.5 grams therefore 1 kg of plastic contains approximately 180 bags",
              impact: 33,
              challenge: student)
laundry_energy = Action.create!(title: "Air dry your laundry",
              description: "In many households, the dryer is the third-most energy-hungry appliance, after the refrigerator and washer. Air-drying your clothes can reduce the average household’s carbon footprint by a whopping 2,400 pounds a year.",
              impact: 83,
              challenge: student)
repair_waste = Action.create!(title: 'Repair, instead of buy new',
              description: "Repair something broken, instead of buying something new. Reach out to somebody in your community that can teach you it to fix it?",
              impact: 600,
              challenge: student)
bike_commute = Action.create!(title: "Commute by bike",
              description: "Or Public Transit or walk. If your commute is 20-miles, the switch could lower your carbon footprint by 4,800 pounds annually",
              impact: 350,
              challenge: student)

ActionCategory.create!(action: power_energy, category: energy)
ActionCategory.create!(action: light_energy, category: energy)
ActionCategory.create!(action: laundry_energy, category: energy)
ActionCategory.create!(action: bag_plastic, category: plastic)
ActionCategory.create!(action: repair_waste, category: waste)
ActionCategory.create!(action: bike_commute, category: commute)



# Challenge to fill the page
single = Challenge.create!(name: 'Single Use Plastic, No More', num_days: 7, difficulty: 3)

flexi   = Challenge.create!(name: 'Flexi 21 Dietary', num_days: 21, difficulty: 2)
# ActionCategory.create!(challenge: flexi, category: diet)
mini    = Challenge.create!(name: 'Minimalism Living', num_days: 30, difficulty: 3)
# ActionCategory.create!(challenge: single, category: plastic)

grocery = Challenge.create!(name: 'Grocery List Re-Write', num_days: 7, difficulty: 1)
# ActionCategory.create!(challenge: grocery, category: diet)

zero    = Challenge.create!(name: '30 Days Zero Waste', num_days: 30, difficulty: 3)
# ActionCategory.create!(challenge: zero, category: waste)
# ActionCategory.create!(challenge: student, category: diet)

# ActionCategory.create!(challenge: student, category: commute)

parent  = Challenge.create!(name: 'Sustainability for Parents', num_days: 14, difficulty: 2)
laundry_energy = Action.create!(title: "Suspend your laundry",
              description: "In many households, the dryer is the third-most energy-hungry appliance, after the refrigerator and washer. Air-drying your clothes can reduce the average household’s carbon footprint by a whopping 2,400 pounds a year.",
              impact: 83,
              challenge: parent)
tupperware_plastic = Action.create!(title: "Use tupperware for leftovers",
                description: "2.2 billion take-out containers being used each year in EU alone.",
                impact: 150,
                challenge: parent)
bag_plastic = Action.create!(title: 'Prep reusable bag',
              description: "An average plastic grocery bag weighs 5.5 grams therefore 1 kg of plastic contains approximately 180 bags",
              impact: 33,
              challenge: parent)
local_diet = Action.create!(title: "Discover Local Farmer's Market",
              description: "######",
              impact: 0,
              challenge: parent)
grocery_diet = Action.create!(title: 'Replace 1 Meat meal',
              description: "Replace 1 Meat meal with 1 plant-based protein",
              impact: 2000,
              challenge: parent)
repair_waste = Action.create!(title: 'Repair Something Broken',
              description: "Reach out to somebody in your community that can teach you it to fix it?",
              impact: 500,
              challenge: parent)

ActionCategory.create!(action: laundry_energy, category: energy)
ActionCategory.create!(action: tupperware_plastic, category: plastic)
ActionCategory.create!(action: bag_plastic, category: plastic)
ActionCategory.create!(action: local_diet, category: diet)
ActionCategory.create!(action: grocery_diet, category: diet)
ActionCategory.create!(action: repair_waste, category: waste)
# ActionCategory.create!(challenge: parent, category: energy)
# ActionCategory.create!(challenge: parent, category: diet)
# ActionCategory.create!(challenge: parent, category: plastic)

biz     = Challenge.create!(name: 'Business Traveler Essentials', num_days: 2, difficulty: 1)
# ActionCategory.create!(challenge: biz, category: travel)

mini    = Challenge.create!(name: 'Minimalism Living', num_days: 30, difficulty: 3)
# ActionCategory.create!(challenge: mini, category: waste)

boot    = Challenge.create!(name: 'Enviromentalist Bootcamp', num_days: 45, difficulty: 3)
# ActionCategory.create!(challenge: boot, category: plastic)
# ActionCategory.create!(challenge: boot, category: waste)
# ActionCategory.create!(challenge: boot, category: diet)

prod    = Challenge.create!(name: 'Natural Products 101', num_days: 7, difficulty: 3)
# ActionCategory.create!(challenge: prod, category: plastic)

mason   = Challenge.create!(name: 'Mason Jar Challenge', num_days: 365, difficulty: 3)
# ActionCategory.create!(challenge: mason, category: waste)

gt      = Challenge.create!(name: 'Grow a green thumb', num_days: 100, difficulty: 1)
# ActionCategory.create!(challenge: gt, category: energy)

holiday = Challenge.create!(name: 'Holiday shopping hack', num_days: 7, difficulty: 1)
tree_waste = Action.create!(title: "Recycle your christmas tree",
              description: "If you already have a compost heap, your tree will have a happy home. If not, tree branches provide a great base layer for composting.",
              impact: 83,
              challenge: holiday)
lights_energy = Action.create!(title: "Do holiday lights right",
                description: "Replacing your traditional lights with LED lights, and using a timer to reduce the amount of time the lights are on.",
                impact: 150,
                challenge: holiday)
holidaytravel_travel = Action.create!(title: 'Carbon offsets for travels',
              description: "A carbon offset project is one that offers services to sequester carbon—examples include reforestation and agroforestry projects.",
              impact: 300,
              challenge: holiday)
holidaytable_diet = Action.create!(title: "Throw a Zero Waste Party",
              description: "The choices you make when you’re at the grocery store can help you reduce your personal agricultural carbon footprint. ",
              impact: 300,
              challenge: holiday)
onlineshopping_waste = Action.create!(title: "No to Amazon. PERIOD.",
              description: "One- or two-day shipping is extremely convenient, but the emissions from such rapid shipment methods tend to be extreme in comparison to slower methods.",
              impact: 400,
              challenge: holiday)
gifts_waste = Action.create!(title: 'Giving, instead of Gifting',
              description: "Consider asking your mom to donate to a cause you believe in, rather than give you another sweater you’ll never wear.",
              impact: 500,
              challenge: holiday)

ActionCategory.create!(action: tree_waste, category: waste)
ActionCategory.create!(action: lights_energy, category: energy)
ActionCategory.create!(action: holidaytravel_travel, category: travel)
ActionCategory.create!(action: holidaytable_diet, category: waste)
ActionCategory.create!(action: onlineshopping_waste, category: waste)
ActionCategory.create!(action: gifts_waste, category: waste)
# ActionCategory.create!(challenge: holiday, category: waste)

nour = User.create!(username: 'Nour', email: 'nour@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1579149593/iim2zl17j0v23pfdx7xj.jpg")
laurence = User.create!(username: 'laurence', email: 'laurence@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1579045386/pk9il9h1gsobqbzehlpb.jpg")
clem = User.create!(username: 'Clem', email: 'clem@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars0.githubusercontent.com/u/30819439?v=4")
carms = User.create!(username: 'Carms', email: 'carms@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars1.githubusercontent.com/u/59268689?v=4")
felix = User.create!(username: 'Felix', email: 'felix@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars3.githubusercontent.com/u/54404722?v=4")
erin = User.create!(username: 'Erin', email: 'erin@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars2.githubusercontent.com/u/26800578?v=4")
james = User.create!(username: 'James', email: 'james@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars0.githubusercontent.com/u/55299151?v=4")
mohammad = User.create!(username: 'Mohammad', email: 'mohammad@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars2.githubusercontent.com/u/45085126?v=4")
habib = User.create!(username: 'Habib', email: 'habib@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars2.githubusercontent.com/u/43456512?v=4")
alex_s = User.create!(username: 'Alex-S', email: 'alex-s@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars3.githubusercontent.com/u/58195877?v=4")
rose = User.create!(username: 'Rose', email: 'rose@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars2.githubusercontent.com/u/56726205?v=4")
katell = User.create!(username: 'Katell', email: 'katell@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars3.githubusercontent.com/u/57771985?v=4")
santiago = User.create!(username: 'Santiago', email: 'santiago@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars1.githubusercontent.com/u/57045353?v=4")
augustin = User.create!(username: 'Augustin', email: 'augustin@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1580077448/umemwbtimiltbmfxowi2.jpg")
antoine = User.create!(username: 'Antoine', email: 'antoine@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1578966127/rxo4dwbjhvujeaueo42d.jpg")
ines = User.create!(username: 'Inès', email: 'ines@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars0.githubusercontent.com/u/58077064?v=4")
cricket = User.create!(username: 'Cricket', email: 'cricket@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars3.githubusercontent.com/u/58791911?v=4")
vicky = User.create!(username: 'Vicky', email: 'vicky@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars0.githubusercontent.com/u/59230296?v=4")
stephane = User.create!(username: 'Stephane', email: 'stephane@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars0.githubusercontent.com/u/37821714?v=4")
frederic = User.create!(username: 'Frederic', email: 'frederic@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars3.githubusercontent.com/u/43460113?v=4")
camille = User.create!(username: 'Camille', email: 'camille@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars1.githubusercontent.com/u/28571921?v=4")
benjamin = User.create!(username: 'Benjamin', email: 'benjamin@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1562611376/kbyjx4l1lcnulkla2gjq.jpg")
alex = User.create!(username: 'Alex', email: 'alex@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://avatars2.githubusercontent.com/u/36859062?v=4")
martin = User.create!(username: 'Martin', email: 'martin@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1533305351/pwlstconwxh7zetwsz1w.jpg")
richard = User.create!(username: 'Richard', email: 'richard@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1546902451/oyfiqksipakhgmfvbbsd.jpg")
aline = User.create!(username: 'Aline', email: 'aline@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://ca.slack-edge.com/T02NE0241-UCC9WMF43-6f6807edc16c-512")
mg = User.create!(username: 'Marie-Gabrielle', email: 'marie-gabrielle@day-o.cc', password: '123456', location: 'Montreal, Canada', photo: "https://ca.slack-edge.com/T02NE0241-U2MK8GVRB-220c24d240e0-72")


cs_st_carms = ChallengeSubscription.create!(user: carms, challenge: starter)
cs_st_carms.update!(created_at: 2.day.ago)

cs_st_nour = ChallengeSubscription.create!(user: nour, challenge: starter)
cs_st_nour.update!(created_at: 30.day.ago)

cs_act = ChallengeSubscription.create!(user: nour, challenge: activism)
cs_act.update!(created_at: 20.day.ago)

cs_holi = ChallengeSubscription.create!(user: nour, challenge: holiday)
cs_holi.update!(created_at: 10.day.ago)

cs_stu = ChallengeSubscription.create!(user: nour, challenge: student)
cs_stu.update!(created_at: 5.day.ago)

# set up Nour's Challenge and Habits for Starter
cs_st_nour.challenge.actions.each_with_index do |action, i|
  if i < 2 || i == 5
    ActionSetting.find_by(challenge_subscription: cs_st_nour, action: action).update!(habit: true, checked: true)

    5.times do
      ActionCompletion.create!(challenge_subscription: cs_st_nour, action: action).update!(created_at: rand(1..5).day.ago)
    end

    7.times do
      ActionCompletion.create!(challenge_subscription: cs_st_nour, action: action).update!(created_at: rand(6..15).day.ago)
    end

    5.times do
      ActionCompletion.create!(challenge_subscription: cs_st_nour, action: action).update!(created_at: rand(16..28).day.ago)
    end
  else
    ActionCompletion.create!(challenge_subscription: cs_st_nour, action: action).update!(created_at: rand(10..15).day.ago)
  end
end

# set up Nour's Challenge and Habits for activism
cs_act.challenge.actions.each_with_index do |action, i|
  if i == 0
    ActionSetting.find_by(challenge_subscription: cs_act, action: action).update!(habit: true, checked: false)

    ActionCompletion.create!(challenge_subscription: cs_act, action: action).update!(created_at: rand(10..20).day.ago)
  elsif i < 3 || i == 5
    ActionCompletion.create!(challenge_subscription: cs_act, action: action).update!(created_at: rand(1..9).day.ago)
  else
    # do nothing
  end
end

# set up Nour's Challenge and Habits for holiday
cs_holi.challenge.actions.each_with_index do |action, i|
  if i.even?
    ActionCompletion.create!(challenge_subscription: cs_holi, action: action).update!(created_at: rand(7..20).day.ago)
  end
end

# set up Nour's Challenge and Habits for Student
cs_stu.challenge.actions.each_with_index do |action, i|
  if i < 2 || (i > 3 && i < 5)
    ActionCompletion.create!(challenge_subscription: cs_stu, action: action).update!(created_at: rand(1..10).day.ago)

  elsif i == 5
    # do nothing
  else
    ActionSetting.find_by(challenge_subscription: cs_stu, action: action).update!(habit: true, checked: false)

    5.times do
      ActionCompletion.create!(challenge_subscription: cs_stu, action: action).update!(created_at: rand(1..5).day.ago)
    end

    7.times do
      ActionCompletion.create!(challenge_subscription: cs_stu, action: action).update!(created_at: rand(5..15).day.ago)
    end

    5.times do
      ActionCompletion.create!(challenge_subscription: cs_stu, action: action).update!(created_at: rand(16..28).day.ago)
    end
  end
end

# Buddy Challenges received check challenge subscription
BuddyChallenge.create!(sender_id: mohammad.id , receiver_id: nour.id , challenge: biz, status: false )
BuddyChallenge.create!(sender_id: martin.id , receiver_id: nour.id , challenge: boot, status: false )

BuddyChallenge.create!(sender_id: james.id , receiver_id: nour.id , challenge: gt, status: false )


# Buddy Challenges sent
BuddyChallenge.create!(sender_id: nour.id, status: false, challenge: holiday, receiver_id: laurence.id)
BuddyChallenge.create!(sender_id: nour.id, receiver_id: clem.id, challenge: prod, status: false )
BuddyChallenge.create!(sender_id: nour.id, receiver_id: benjamin.id, challenge: mini, status: false )

# creating earned badges for nour
# EarnedBadge.create!(user: nour, badge: diet_badge)
# EarnedBadge.create!(user: nour, badge: commute_badge)
# EarnedBadge.create!(user: nour, badge: energy_badge)



# creating earned badges
# 10. times do
#   user = User.all.sample
#   badge = Badge.all.sample
#   EarnedBadge.create!(user: user, badge: badge)
# end

puts 'completed'
# Action.create!(title: "Replace 1 Meat with 1 plant-based protein",
#               description: 'Tempeh maybe?')
# Action.create!(title: "Choose Fruits & Veggie in Season",
#               description: '')
# 'Visit a Second Hand Store'
# 'Plastic Free Picnic'
# '15 mins beach clean'
# 'Go for a bike ride'
# 'Zero waste BBQ'
# 'Go star gazing'
# 'Make your own humus'
# 'Plant a tree seed'
# 'Donate 10 items that no longer serves you'
# 'Hug a tree'
# 'Walk today, instead of driving'
# 'Share a shower'
# 'Learn Furoshiki gift wrapping'
# 'Buy a local craft beer'
# 'Check out a community group'
# 'Set goals for the next 6 months'
