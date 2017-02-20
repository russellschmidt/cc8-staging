# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first, clear the deck
Campaign.delete_all
Project.delete_all
Partner.delete_all
Location.delete_all

# then, add back in
loc = Location.new(name:"Los Angeles")
loc.save

partner = Partner.new(location_id: loc.id, name: "The Bay Foundation", blurb:"Restoring, enhancing & protecting Santa Monica Bay through actions and partnerships that improve water quality, conserve and rehabilitate natural resources.",
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

puts "#{Location.count} new Location(s)"
puts "#{Partner.count} new Partner(s)"
puts "#{Project.count} new Project(s)"
puts "#{Campaign.count} new Campaign(s)"
