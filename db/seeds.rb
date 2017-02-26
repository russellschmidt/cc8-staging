# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first, clear the deck
Donation.delete_all
Campaign.delete_all
Project.delete_all
Partner.delete_all
Location.delete_all

# then, add back in
loc = Location.new(name:"Los Angeles")
loc.save

# -------------
# bay foundation
partner = Partner.new(location_id: loc.id,
  name: "The Bay Foundation",
  blurb:"Help Restore the Kelp Forests in the Santa Monica Bay",
  description: "The Bay Foundation’s mission is to restore and enhance Santa Monica Bay through actions and partnerships that improve water quality, conserve and rehabilitate natural resources, and protect the Bay’s benefits and values.

  Nearly two million people live in the Santa Monica Bay Watershed stretching from Ventura County to Palos Verdes, from the Santa Monica Mountains and Griffith Park, to Baldwin Hills and out to the sea. More than 5,000 species of animals, fish, birds and plants make their home in the Bay and the Bay Watershed.

  The Bay Foundation (TBF)—also known as the Santa Monica Bay Restoration Foundation—is a 501(c) 3 non-profit environmental group founded in 1990 to restore and enhance Santa Monica Bay and local coastal waters.  TBF is staffed by science and policy experts who are passionate about understanding and protecting the Bay and the Bay watershed, and all the benefits that a healthy ecosystem can provide all those who use and enjoy it.

  TBF works with a broad group of stakeholders, including government agencies, environmental groups, local communities, industry and scientists, to create and put into action innovative policies and projects that clean up our waterways, create green spaces in urban areas, and restore natural habitats both on land and underwater, such as wetlands and kelp forests.

  The Bay Foundation’s work stretches across 7 program areas – you can check them out at the links below:

  Rivers and Streams Coastal Wetlands and Lagoons Beaches and Dunes In the Ocean Clean Boating Green Neighborhoods Clean Bay Certified

  TBF is part of the U.S. EPA’s Santa Monica Bay National Estuary Program (NEP)—learn more about estuaries here.  The SMBNEP is one of 28 similar programs established under Section 320 of the 1987 Clean Water Act and administered by the U.S. EPA.

  As part of the SMBNEP, TBF is the non-profit partner of the Santa Monica Bay Restoration Commission and the Santa Monica Bay Restoration Authority, and is focused on research, education, planning, cleanup efforts, and other priorities identified in the SMBNEP’s Bay Restoration Plan (BRP), a publicly-adopted comprehensive plan of action for protecting and restoring Santa Monica Bay. For more information on the entire SMBNEP, please visit the Background page.

  The implementation of the BRP has resulted in massive improvements to the human and environmental health of the region.")
partner.save

project = Project.new(partner_id: partner.id, name: "Bring Back the Bay's Kelp Forests",
  blurb: "You have a unique opportunity to preserve and expand kelp forests in the Santa Monica Bay, which have been devastated by a century of pollution and mistreatment.",
  description: "Kelp is the most important 'plant' (okay, technically photosynthetic algae) you’ve never thought much about.
Kelp forests are the ocean’s tropical rainforests, providing habitats for more than 700 species of fish, invertebrates, and other algae.
Ocean plants, including kelp, are so widespread and good at scrubbing carbon that they cycle through roughly the same amount of greenhouse gases every day as all the land-based plants.
The foundation of the world’s most productive ecosystems, kelp plants efficiently remove the carbon that is causing our waters to grow acidic, squelching sea life like shellfish.  Excess CO2 accumulates in the atmosphere and in the ocean as a result of human activity.  The atmosphere warms, the ocean turns acidic.  Restoring kelp forests enables rapid carbon sequestration, as the kelp grows so quickly.  This approach reduces the CO2 in the atmosphere as well as the CO2 that’s dissolved in the ocean.  Therefore funding kelp restoration benefits the atmosphere and the ocean.  In addition this project increases local food security, retains local jobs, and may protect our coast from erosion. These all relate back to the threats our coast and lifestyle face as part of climate change.
You have a unique opportunity to preserve and expand kelp forests in the Santa Monica Bay, which have been devastated by a century of pollution and mistreatment.
Our partners at The Bay Foundation have already restored 39 acres and are working to double that amount. They and the fishermen they employ, dive several times a month with geological hammers and a passion for selectively culling the overpopulated purple urchins that are depriving the ecosystem of life.
Within days of clearing the sea floor, the kelp quickly returns, eventually growing up to 2 feet per day, and begins to:
— sequester carbon
— clean, oxygenate and de-acidify the water
— support a multitude of marine life, restoring a flourishing ecosystem – seals, red urchin (the 'uni' you can find with sushi platters), and all kinds of fish.")
project.save

campaign = Campaign.new(project_id: project.id, name: "2017 Heal the Bay Campaign",
  description: "2017 Santa Monica Bay Restoration Project",
  start_date: Time.strptime('01/01/2017 00:00:00', '%m/%d/%Y %H:%M:%S'),
  end_date: Time.strptime('12/31/2017 23:59:59', '%m/%d/%Y %H:%M:%S'),
  dollar_goal_in_cents: 100000,
  co2_per_dollar: 30,
  active: true)
campaign.save

# ---------------
# MEND
partner = Partner.new(location_id: loc.id,
  name: "MEND",
  blurb:"End a Food Desert: Urban Farming in Pacoima",
  description: "In the early 1970’s, MEND — Meet Each Need with Dignity — opened its doors in an effort to transform the lives of the neediest residents of the Northeast San Fernando Valley – poor children and their struggling families
Starting as a small group of volunteers working from a garage, MEND has grown primarily by word-of-mouth into the largest poverty agency in the San Fernando Valley, hosting 37,000 client visits per month.
It stands out as one of the most efficient, leanest operating nonprofit in existence, thanks to its innovative use of volunteers giving more than 16,600 hours every month.
Less than 6% of revenues go to overhead. Every other bit of support goes directly to programs that that provides emergency food, clothing, medical, vision and dental care, job skills training and job placement assistance, English as a Second Language classes, youth activities, and a Christmas program
Although MEND is dedicated to relieving the effects of poverty, its underlying mission is to provide the means and the path to self-sufficiency: to “break the bonds of poverty.”
MEND provides the basic human needs vital to day-to-day survival as well as education, training, opportunities, and support essential to reducing and ultimately eliminating reliance on public and private assistance.
Most importantly, MEND provides these services in a manner that maintains the dignity and self-esteem of recipients.
Each month, more than 16,600 hours are donated by volunteers from a broad range of backgrounds and income levels; all joining together to act as people helping people.
Each person plays a vital role in meeting the mission of MEND. From the distribution of food, clothing to assistance in job training and placement, volunteers give MEND life.
Grow Together
More than 75% of all MEND clients have household incomes of less than $10,000 per year, and that 48% suffer from a diet-related illness. In the poor neighborhoods in and aroud Pacoima, like communities across the country, growing numbers of people are suffering from their lack of access to healthy food they can afford. As a result, diet-related illness are skyrocketing.
Grow Together tackles both these problems by empowering immigrant families to make use of their unique knowledge and skills.
Though many of the families served by the program grew up in farming communities, they’ve lacked the resources here to start home gardens of their own.
Launched in the spring of 2013, Grow Together is a community initiative created to empower disadvantaged families in the northeast San Fernando Valley to work towards self-reliance and greater food security.
It promote good health to its participants through access to fresh produce, the exercise involved in gardening, and educational workshops on topics like cooking, canning, and nutrition.
Participating families are also provided with fruit trees and tree care workshops. Grow Together families are given the opportunity to engage in an activity where they can come together and give back to their communities by sharing what they learned and harvested.
Tomatoes, melons, squash, cucumbers, peppers, kale, chard, broccoli, cabbage, cauliflower, green beans, cilantro, basil, rosemary and thyme are just some of the most common crops.
Families use the people and climate-friendly techniques out there —
— Organic — no herbicides, pesticides, insecticides and petroleum-based fertilizers — Drip irrigation and straw as crop cover to reduce water use — Composting — turning plant waste into nourishment for the next generation of plants, not filling landfills — No Till — Companion Planting – putting plants together whose needs and by-products complement each other
So far the project has built home gardens for 163 families, and provided the training and support to ensure their success.
To combat hunger, build home gardens, and promote healthy and sustainable lifestyles, the MEND Grow Together Project has partnered with community organizations and individuals. In building all 163 home gardens, the MEND Grow Together Project works with the Sylmar High School Horticulture Department to provide participating families with seedlings. It is currently working with Master Gardeners and Master Food Preservers who provide the training for Grow Together families. More than 150 volunteers have dedicated their time to this program so far and in 2015 alone, volunteers contributed nearly 1,700 hours of service.")
partner.save

project = Project.new(partner_id: partner.id, name: "Urban Farming in Pacoima",
  blurb: "MEND's GROW TOGETHER program empowers low-income, immigrant families to grow their own food by providing the supplies and support necessary for creating and maintaining backyard gardens.",
  description: "Little known fact — The earth’s soils store far more carbon than all of the plants in the world.
The problem — Industrial agriculture has transferred the soil’s carbon to the atmosphere, but we’re now learning how to reverse the trend.
The solution — By using compost, cover crop, and no-till practices instead of fossil fuel-based fertilizers, we can sequester carbon in the soil, where it helps plants grow better.
So we’re partnering with the best urban gardens and farms in Los Angeles to plant the seeds of this soil revolution.
Our first project is with MEND in Pacoima. Their GROW TOGETHER program empowers low-income, immigrant families to grow their own food by providing the supplies and support necessary for creating and maintaining backyard gardens.
It serves as a model for how farming close to home can transform the carbon cycle, while making our neighborhoods into vibrant centers of community and sustenance.
Food grown close to home:
* Reduces the fossil fuels necessary to transport produce long distances
* Slashes the need for petroleum-based fertilizers
* Directs organic waste from families and the community into compost instead of landfills
* Lowers the number of car trips families make to the grocery store each week
Participating families:
* Save money
* Eat a better, more healthy and nutritious diet
* Gain a new appreciation for where food comes from and value of time spent outdoors
* Alleviate stress
* Brings families and community together
* Maintain cultural traditions and sense of pride
Many of these families come from agricultural backgrounds in their native countries and MEND empowers them to continue their healthy plant-based diets instead of assimilating to over-processed, less nutritious supermarket groceries.")
project.save

campaign = Campaign.new(project_id: project.id, name: "2017 MEND Urban Farming Campaign",
  description: "2017 MEND Urban Farming in Pacoima campaign",
  start_date: Time.strptime('01/01/2017 00:00:00', '%m/%d/%Y %H:%M:%S'),
  end_date: Time.strptime('12/31/2017 23:59:59', '%m/%d/%Y %H:%M:%S'),
  dollar_goal_in_cents: 100000,
  co2_per_dollar: 24,
  active: true)
campaign.save

# -------------
# Isidore Recycling


# -------------
# GRID


# --------------
# End

puts "#{Location.count} new Location(s)"
puts "#{Partner.count} new Partner(s)"
puts "#{Project.count} new Project(s)"
puts "#{Campaign.count} new Campaign(s)"
puts "#{Donation.count} new Donation(s)"
