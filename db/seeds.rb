# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first, clear the deck
Image.delete_all
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

  The implementation of the BRP has resulted in massive improvements to the human and environmental health of the region.",
  volunteer: "",
  news: "")
partner.save

project = Project.new(partner_id: partner.id, name: "Bring Back the Bay's Kelp Forests",
  blurb: "You have a unique opportunity to preserve and expand kelp forests in the Santa Monica Bay, which have been devastated by a century of pollution.",
  description: "Kelp is the most important 'plant' (okay, technically photosynthetic algae) you’ve never thought much about.
  Kelp forests are the ocean’s tropical rainforests, providing habitats for more than 700 species of fish, invertebrates, and other algae.
  Ocean plants, including kelp, are so widespread and good at scrubbing carbon that they cycle through roughly the same amount of greenhouse gases every day as all the land-based plants.
  The foundation of the world’s most productive ecosystems, kelp plants efficiently remove the carbon that is causing our waters to grow acidic, squelching sea life like shellfish.  Excess CO2 accumulates in the atmosphere and in the ocean as a result of human activity.  The atmosphere warms, the ocean turns acidic.  Restoring kelp forests enables rapid carbon sequestration, as the kelp grows so quickly.  This approach reduces the CO2 in the atmosphere as well as the CO2 that’s dissolved in the ocean.  Therefore funding kelp restoration benefits the atmosphere and the ocean.  In addition this project increases local food security, retains local jobs, and may protect our coast from erosion. These all relate back to the threats our coast and lifestyle face as part of climate change.
  You have a unique opportunity to preserve and expand kelp forests in the Santa Monica Bay, which have been devastated by a century of pollution and mistreatment.
  Our partners at The Bay Foundation have already restored 39 acres and are working to double that amount. They and the fishermen they employ, dive several times a month with geological hammers and a passion for selectively culling the overpopulated purple urchins that are depriving the ecosystem of life.
  Within days of clearing the sea floor, the kelp quickly returns, eventually growing up to 2 feet per day, and begins to:
  — sequester carbon
  — clean, oxygenate and de-acidify the water
  — support a multitude of marine life, restoring a flourishing ecosystem – seals, red urchin (the 'uni' you can find with sushi platters), and all kinds of fish.",
  overview_headline: "",
  science_headline: "",
  news_headline:"",
  volunteer_headline:"",
  science: "Kelp is the best way to fight global warming that you’ve never heard of.
Plant-like life in the ocean, from seagrasses to plankton, add up to just 0.05 percent of the plant biomass on land, but are so pervasive and efficient at sucking up carbon that they cycle through approximately the same amount of carbon every year as all land-based plants.
Kelp is especially powerful. It grows at an amazing rate, up to 1 foot per day, making it one of the most productive ecosystems on earth.
To make that happen locally, the folks at the Bay Foundation dive down and smash the parasitic purple urchins on the sea floor that have choked the ecosystem.
As the kelp re-grows, it sucks CO2 directly from the water, incorporating the carbon into its stalks and fronds, like land plants do. Plants reach maturity after about 1 year.
When the fronds break off and sink to the deep sea floor, they become sediment, sequestering the carbon for the long-term, out of the water and the atmosphere.
When the stalks land nearby, the growth cycle begins again, sequestering more carbon and the process goes on.
This process is especially important because our oceans absorb more than 30% of the CO2 we release into the atmosphere.
As a result, the water is becoming increasingly acidic. Ocean acidification triggers the death of coral and hurts nearly all kinds of marine life, including the shellfish that billions of people rely on for food.
By restoring 150 acres of kelp forest by 2017, the Bay Foundation’s program is projected to directly store up to 19.8 million lbs of CO2 over the next decade, according to calculations based on several peer-reviewed studies.
But that’s not the end of the story. Kelp generates powerful multiplier effects.
The re-growth of kelp forests leads to the flourishing of ecosystems that store and sequester even more carbon.
The Bay Foundation’s data show that giant kelp density has more than tripled between 2013 and 2015, with increases in other types of algae, the number and size of red urchins, the diversity of fish species, and the overall biomass of fish such as kelp bass and sheephead. The increasing presence of coastal life translates into a more powerful system for sequestering and storing carbon.
As cutting-edge research indicates, animals can play a key role in carbon storage. In the ocean and the coastal areas restored by kelp, animals such fish, 'echinoderms' (sea urchins, sea stars) and oysters not only store carbon in their bodies (some of which gets sequestered permanently when thy die and fall to the sea floor), but also release carbonate minerals like CaCO2 directly into the water which lowers the water’s acidity and stores more carbon.
The carbon burial capacity of marine vegetated habitats such as kelp forests is phenomenal, 180 times greater than the average burial rate in the open ocean.
A recent report released by scientific institutes including the UNESCO International Oceanographic Commission has shown that as much as 7% of carbon dioxide (CO2) reductions we need can be achieved by protecting and restoring coastal plant life.
Kelp can also suck up the excess nitrogen and phosphorous that comes from agricultural runoff and wastewater.
There are some estimates that if we “accelerate seaweed production by 15% a year (the current growth rate is 9%) by 2050 that biomass will be able to remove eighteen per cent of the nitrogen and sixty-one per cent of the phosphorous contributed to the ocean by fertilizers annually, and will take up six per cent of the ocean’s emissions-related carbon.”
Below is an explanation of how much carbon each of these factors reduce, individually and jointly and the scientific sources of this information.
Calculations
By surveying all relevant studies of kelp, our scientific partners at the Bay Foundation estimated that 23% of the carbon processed by kelp was stored physically on an on-going basis as 'standing stock' and that additional 50% of that amount was transported to the deep sea environment.
By restoring 150 acres of kelp forest by 2017, the Bay Foundation’s program is projected to directly store up to 19.8 million lbs of CO2 over the next decade.
That’s equivalent of 32.7 lbs of CO2 per square meter, or 9786.83 lbs of CO2 per 300 square meter plot.
As a result of the secondary and tertiary effects of kelp forest re-growth on the ecosystem, we estimate a multiplier factor of 1.75, which means that for that the total CO2 storage impact of 300 acres will be 17,1127 lbs.
We determine your personal impact by figuring out the per dollar cost of reducing 1 lb of CO2 and then multiplying that number by the amount of money you contributed.
The cost of one dive to restore a 300 square meter plot is $1,000.
BOTTOM LINE: You reduce an additional 17lbs of CO2 for every additional dollar you donate.
Sources for Kelp’s Direct Carbon Impact:
Wilmers CC, Estes JA, Edwards M, Laidre KL, Konar B. 2012. 'Do trophic cascades affect the storage and flux of atmospheric carbon? An analysis of sea otters and kelp forests,' Frontiers in Ecology and the Environment, doi:10.1890/110176.
Dan Laffoley & Gabriel Grimsditch, eds., 2009. The Management of Natural Coastal Carbon Sinks. UCN, Gland, Switzerland. 53 pp.https://cmsdata.iucn.org/downloads/carbon_managment_report_final_printed_version_1.pdf
Harrold C, Light K, Lisin S. 1998. Organic enrichment of submarine-canyon and continental-shelf benthic communities by macroalgal drift imported from nearshore kelp forests. Limnology and Oceanography, 4, doi: 10.4319/lo.1998.43.4.0669.
Reed, D. C., Rassweiler, A. and Arkema, K. K. 2008. 'Biomass Rather Than Growth Rate Determines Variation In Net Primary Production By Giant Kelp.' Ecology, 89: 2493–2505. doi:10.1890/07–1106.1
Sources for Kelp’s Indirect Impact:
Atwood TB, et al. 2014. Trophic-level dependent effects on CO2 emissions from experimental stream ecosystems, Global Change Biology, 20, 3386–3396, doi: 10.1111/gcb.12516.
Bay Foundation, 'Kelp Restoration Annual Report July 2014 – June 2015':http://www.santamonicabay.org/wp-content/uploads/2014/04/Kelp-Restoration-Annual-Report-October-2015-Final.pdf
Bradley RA, Bradley DW. 1993. Wintering shorebirds increase after kelp (Macrocystis) recovery. The Condor 95: 372–376.
Claisse et al. 2013. Kelp forest restoration has the potential to increase sea urchin gonad biomass. Ecosphere 4(3):38.
Dojiri M, Yamaguchi M, Weisberg SB, Lee HJ. 2003. Changing anthropogenic influence on the Santa Monica Bay watershed. Marine Environmental Research 56: 1–14.
Duggins DO, Simenstad CA, Estes JA. 1989. Magnification of secondary production by kelp detritus in coastal marine ecosystems. Science 245: 170–173.
Ford T, Meux B. 2010. Giant Kelp community restoration in Santa Monica Bay. Urban Coast 2: 43–46.
Foster MS, Schiel DR. 2010. Loss of predators and the collapse of southern California kelp forests: Alternatives, explanations and generalizations. Journal of Experimental Marine Biology and Ecology 393: 59–70.
Graham MH. 2004. Effects of local deforestation on the diversity and structure of southern California giant kelp forest food webs. Ecosystems 7: 341–357.
Graham MH, Vasquez JA, Buschmann AH. 2007. Global ecology of the giant kelp Macrocystis: from ecotypes to ecosystems. Oceanography and Marine Biology: An Annual Review 45: 39–88.
Harrold C, Reed DC. 1985. Food availability, sea urchin grazing, and kelp korest community structure. Ecology 66: 1160–1169.
Kelly E, editor. 2005. The role of kelp in the marine environment. Irish Wildlife Manuals, No. 17. National Parks and Wildlife Service, Department of Environment, Heritage and Local Government, Dublin, Ireland.
Schmitz OJ et al. 2014. 'Animating the Carbon Cycle,' Ecosystems17: 344–359 DOI: 10.1007/s10021–013–9715–7, p. 349.
Steneck RS, Graham MH, Bourque BJ, Corbett D, Erlandson JM, Estes JA, Tegner MJ. 2002. Kelp forest ecosystems: biodiversity, stability, resilience and future. Environ Conserv, 29(4):436–459.
Strickland MS, Hawlena D, Reese A, Bradford MA, Schmitz OJ. 2013. Trophic cascade alters ecosystem carbon exchange. Proceedings of the National Academy of Sciences of the United States of America. 110(27):11035–11038. doi:10.1073/pnas.1305191110.
Tegner MJ, Dayton PK. 2000. Ecosystem effects of fishing in kelp forest communities. ICES. Journal of Marine Science 57: 579–589.
Wilmers CC, Estes JA, Edwards M, Laidre KL, Konar B. 2012. “Do trophic cascades affect the storage and flux of atmospheric carbon? An analysis of sea otters and kelp forests,” Frontiers in Ecology and the Environment, doi:10.1890/110176.
The Importance of 'Blue Carbon' to Fighting Climate Change
'Blue Carbon: The Role of Healthy Oceans in Binding Carbon'
A new Rapid Response Assessment report released 14 October 2009 at the Diversitas Conference, Cape Town Conference Centre, South Africa. Compiled by experts at GRID-Arendal and UNEP in collaboration with the UN Food and Agricultural Organization (FAO) and the UNESCO International Oceanographic Commissions and other institutions, the report highlights the critical role of the oceans and ocean ecosystems in maintaining our climate and in assisting policy makers to mainstream an oceans agenda into national and international climate change initiatives.http://www.grida.no/publications/rr/blue-carbon/
Dan Laffoley & Gabriel Grimsditch, eds. ,The Management of Natural Coastal Carbon Sinks. 2009. UCN, Gland, Switzerland. 53 pp.https://cmsdata.iucn.org/downloads/carbon_managment_report_final_printed_version_1.pdf")

project.save

campaign = Campaign.new(project_id: project.id, name: "2017 Heal the Bay Campaign",
  description: "2017 Santa Monica Bay Restoration Project",
  start_date: Time.strptime('01/01/2017 00:00:00', '%m/%d/%Y %H:%M:%S'),
  end_date: Time.strptime('12/31/2017 23:59:59', '%m/%d/%Y %H:%M:%S'),
  dollar_goal_in_cents: 100000,
  co2_per_dollar: 30,
  city: "Palos Verdes",
  state: "CA",
  active: true)
campaign.save

# home project card image
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/350x200-project/kelp-350x200.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# hero image
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/HighResProject/bay-foundation-project-hero-kelp-restoration-1000x390.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# logo
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/PartnerLogo/Bay-Foundation-logo-155x155.png",
  partner_id: partner.id,
  logo: true,
  )
image.save

# ---------------
# MEND
partner = Partner.new(location_id: loc.id,
  name: "MEND",
  blurb:"End a Food Desert: Urban Farming in Pacoima",
  description: "In the early 1970’s, MEND — Meet Each Need with Dignity — opened its doors in an effort to transform the lives of the neediest residents of the Northeast San Fernando Valley – poor children and their struggling families
  Starting as a small group of volunteers working from a garage, MEND has grown primarily by word-of-mouth into the largest poverty agency in the San Fernando Valley, hosting 37,000 client visits per month.
  It stands out as one of the most efficient, leanest operating nonprofit in existence, thanks to its innovative use of volunteers giving more than 16,600 hours every month.
  Less than 6% of revenues go to overhead. Every other bit of support goes directly to programs that that provides emergency food, clothing, medical, vision and dental care, job skills training and job placement assistance, English as a Second Language classes, youth activities, and a Christmas program
  Although MEND is dedicated to relieving the effects of poverty, its underlying mission is to provide the means and the path to self-sufficiency: to 'break the bonds of poverty.'
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
  To combat hunger, build home gardens, and promote healthy and sustainable lifestyles, the MEND Grow Together Project has partnered with community organizations and individuals. In building all 163 home gardens, the MEND Grow Together Project works with the Sylmar High School Horticulture Department to provide participating families with seedlings. It is currently working with Master Gardeners and Master Food Preservers who provide the training for Grow Together families. More than 150 volunteers have dedicated their time to this program so far and in 2015 alone, volunteers contributed nearly 1,700 hours of service.",
  volunteer: "One of the reasons that MEND is amazing is because they are powered by volunteers.
Like Climate Cents, they use their staff to manage an enthusiastic and talented group of every day people so their impact is multiplied many times over.
There are endless opportunities to help out their work of supporting low-income families in the most dignified way possible.
We suggest getting started with their Grow Together and Food Justice program.
You can help out as a gardener, someone who helps sort fresh produce for the food pantry, and more.",
  news: "")
partner.save

project = Project.new(partner_id: partner.id, name: "Urban Farming in Pacoima",
  blurb: "MEND's GROW TOGETHER program empowers low-income, immigrant families to grow their own food by creating and maintaining backyard gardens.",
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
  Many of these families come from agricultural backgrounds in their native countries and MEND empowers them to continue their healthy plant-based diets instead of assimilating to over-processed, less nutritious supermarket groceries.",
  overview_headline: "",
  science_headline: "",
  news_headline:"",
  volunteer_headline:"",
  science: "Our global food system creates 20–30% of all human being’s greenhouse gas emissions. Meat and dairy production contribute disproportionately to that total, as does food waste. But other things matter too.
The earth’s soils contain more than three times the amount of carbon as the atmosphere, and 4.5 times the amount of carbon as all living things.
Industrial agricultural methods have massively depleted carbon from the earth’s soil, transferring it into the atmosphere, causing global warming, and into the water, causing ocean acidification.
The good news is that it’s possible for the soils to start absorbing carbon again, potentially up to 15% of all global fossil fuel emissions each year.
(All information drawn from Lal, R, et al. 2004. Soil Carbon Sequestration Impacts on Global Climate Change and Food Security. Science 304, 1623. DOI: 10.1126/science.1097396)
The solution is going to take place across the world and at all scales.
We can start with demonstration projects here in Los Angeles – urban gardens and farms that not only restore carbon to the soil, but also reduce the food system’s total greenhouse gas impact.
There are at least 6 ways in which food that’s locally and organically grown, using composting, cover crop, and no-till methods, can fight climate change.
— Industrial fertilizer use is reduced
— Food waste becomes compost that’s plowed back into the soil, not landfill material that offgases carbon into the atmosphere
— Local vehicle trips to the supermarket decline
— Long-distance air and truck shipping of food declines
— Seasonal fresh fruits and vegetables replace some of the meat, dairy, and processed food consumption
— Carbon directly sequestered by woody plants, like fruit trees
Below is an explanation of how much carbon each of these factors reduce, individually and jointly, in the case of MEND and the scientific sources of this information.
We determine your personal impact by figuring out the per dollar cost of reducing 1 lb of CO2 and then multiplying that number by the amount of money you contributed.
Carbon Reductions Per Dollar Over The Project’s 5 Year Projected Life Span
Composting as a Substitute for Industrial Fertilizer and as Soil Additive

MEND families:
30 Pounds of Compost Generated per year 80% Estimated % of wet compost added to the garden
Avoided Use of Industrial Fertilizer: 2.5 lbs of CO2 over 5 years
Carbon Stored in Soils, Instead of Offgassed Through Landfilling: 121 lbs of CO2 over 5 years
Favoino E, Hogg L. 2008. The Potential Role of Compost in Reducing Greenhouse Gases. Waste Management & Research 26 (1): 61–69. doi:10.1177/0734242X08088584.
Lou XF, Nair J. 2009. The Impact of Landfilling and Composting on Greenhouse Gas Emissions – A Review. Bioresource Technology, Selected papers from the International Conference on Technologies and Strategic Management of Sustainable Biosystems, 100 (16): 3792–98. doi:10.1016/j.biortech.2008.12.006.
Local Vehicle Miles:

MEND clients most commonly drive cars like mid-late 1990s Nissan Altimas and Toyota Corollas. They avoid 1 round-trip per week to the grocery store, reducing total miles traveled by 208.
For these cars, according to the EPA at www.FuelEconomy.Gov —
Average city MPG: 17 Average carbon intensity of a gallon of gas: 446 grams CO2
Total GHG Reduction Per Family Garden: 54 lbs of CO2 over 5 years
Dietary Shift Toward More Local, Organic and Fruit/Vegetable-Based Diet

Rough Estimate: 1,323 lbs of CO2 over 5 years
Weber CL, Matthews HS. 2008. Food-Miles and the Relative Climate Impacts of Food Choices in the United States. Environ. Sci. Technol., 2008, 42 (10), 3508–3513 DOI: 10.1021/es702969f.
Kulak M, Graves A, Chatterton J. 2013. Reducing greenhouse gas emissions with urban agriculture: a Life Cycle Assessment perspective. Landscape Urban Plan, 111, 68–78.
http://www.davidsuzuki.org/what-you-can-do/food-and-our-planet/food-and-climate-change/
Kim B, Neff R, Measurement and communication of greenhouse gas emissions from U.S. food consumption via carbon calculators. Ecological Economics (2009), doi:10.1016/j.ecolecon.2009.08.017
Sarah DeWeerdt, 'Is Local Food Better?,' World Watch Magazine, May/June 2009, Volume 22, No. 3. http://www.worldwatch.org/node/6064
Direct Carbon Sequestration By Plants

MEND families plant an average of 3 fruit trees with their gardens. We assumed each tree will live, on average, for at least 25 years.
We used the camphor tree as a baseline for calculations.
Nearly 500 lbs of CO2 would be stored in the tree itself and anther 2,500 lbs of CO2 would be saved through lower energy use in cooling/heating systems.
Total greenhouse gas reduction: 9,000 lbs of CO2 over 25 years
CUFR Tree Carbon Calculator, developed by Center for Urban Forest Research, Pacific Southwest Research Station, US Forest Service, in partnership with the California Department of Forestry and Fire Protection. http://www.fs.usda.gov/ccrc/tools/tree-carbon-calculator-ctcc
MEND Greenhouse Reductions Per Garden: 10,500 lbs of CO2
Budget: Lumber: $110 Soil: $69 Pins: $12 Irrigation: $60 Tools: $90 Composter: $20 Sales Tax: $36
Operating Costs: $40
Total: $438
BOTTOM LINE:
You reduce an additional 24 lbs of CO2 for every dollar you donate.")
project.save

campaign = Campaign.new(project_id: project.id, name: "2017 MEND Urban Farming Campaign",
  description: "2017 MEND Urban Farming in Pacoima campaign",
  start_date: Time.strptime('01/01/2017 00:00:00', '%m/%d/%Y %H:%M:%S'),
  end_date: Time.strptime('9/30/2017 23:59:59', '%m/%d/%Y %H:%M:%S'),
  dollar_goal_in_cents: 100000,
  co2_per_dollar: 24,
  city: "Pacoima",
  state: "CA",
  active: true)
campaign.save

image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/350x200-project/Farm-350x200.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# hero image
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/HighResProject/mend-project-hero-1024x680.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# logo
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/PartnerLogo/MEND-logo.jpg",
  partner_id: partner.id,
  logo: true,
  )
image.save

# -------------
# Isidore Recycling
partner = Partner.new(location_id: loc.id,
  name: "Homeboy Recycling",
  blurb:"Recycle Computers and Rebuild Lives",
  description: "Homeboy Recycling is building a world in which our resources – both human and natural – are valued, not wasted.
Their mission is to make recycling electronics easy, secure and accessible, while creating employment opportunities for people who have successfully exited California’s correctional system. Founded by Kabira Stoke as Isidore Electronics Recycling, the enterprise is now part of the Homeboy Industries network.
Their Process
The process begins by weighing and sorting all electronic devices received. All items with sensitive data are flagged for Secure Data Destruction. Working devices then go to the Reuse Department and non-working devices go to the Materials Recovery Department.
REUSE
Homeboy believes that the highest form of recycling is reuse. Many of the items that they receive still have useful life left in them. When permitted by their customers, they repair and refurbish those devices to rigorous R2 standards of functionality, then put them back out into the market.
The sale of pre-owned electronics keeps electronics out of our landfills, decreases consumption of natural resources, and supplies low cost devices that can help bridge the digital divide. That’s a WIN-WIN-WIN. Reuse also creates more and higher skilled jobs than materials recovery does. That’s another WIN.
MATERIALS RECOVERY
Electronics that have no useful life left in them are recycled responsibly in accordance with Isidore’s industry-leading R2 certification. They partner with specialized and certified material recovery facilities to ensure that the valuable natural resources contained in electronics are reprocessed into new goods. This reduces the need to mine new resources.
Electronics are also unfortunately responsible for a large percentage of toxins in our landfills. To protect our soil, water, and air, Homeboy has a Zero Landfill Policy. They never landfill, incinerate, or illegally export any e-waste.
CERTIFICATION
As an R2 certified company, Homeboy has undergone extensive third party auditing to ensure that its processes are safe for its workers and responsible towards the environment.
Homeboy’s Core Values — in their own words
We believe in second chances. For those who have served their time and are ready to positively contribute to society, and for the precious resources in our old electronics.
We believe in public safety. Our landfills are overflowing. Our prisons are overflowing. The toxins in our landfills get into our drinking water, into our ground soil, into our lives. 98% of people who go to prison come out of prison to our communities. If we haven’t rehabilitated them, they go back to prison – often after having committed more crimes. That is not public safety. There is no “away” when we throw something away. The public will be truly safe when we keep electronics out of landfills and people out of prison.
We believe in being truly green. We are always striving to be as environmentally correct as possible. We vigilantly seek new solutions and the most innovative ways to reclaim our resources.
We believe in the power of work. Work gives us purpose. It gives us pride, dignity, and self-respect. It gives us self-worth. Work is a tool of healing and of rehabilitation; it is our most powerful crime-fighter.
We believe in doing no harm. The systems that were designed to help people are hurting people. We have a moral obligation to examine and better them. Immediately.
We believe in the power of public-private partnerships. Businesses can and should partner with government to solve problems. Period.
We believe that today’s companies must embrace a triple bottom line. There is no room for a modern business to be anything but socially and environmentally responsible. This new generation of business knows that there is a value in social good that is comparable to monetary value, and is equipped to tackle huge, gnarly problems with efficiency and style.",
  volunteer: "Homeboy Recycling depends on getting your old electronics and computers to work its magic.

If you have materials, you can bring them to their facilities, free of charge:
Monday through Friday: 10:00am - 1:30pm and 2:30 - 5:30pm
1769 Naud St, Los Angeles, CA 90012
They’re especially interested in arranging a contributions from organizations like businesses, nonprofits, and governments who have a lot of material for disposal. Homeboy Recycling offers competitive pricing for its certified, secure, and responsible e-waste solutions.
To schedule a pickup and get a quote, call (323) 222–3322 or email info@isidorerecycling.com.",
  news: "")
partner.save

project = Project.new(partner_id: partner.id, name: "Recycle Electronics, Rebuild Lives",
  blurb: "Your donation will help Homeboy Recycling expand their electronics recycling program that provides job training and employment.",
  description: "One of the best ways to reduce greenhouse gas emissions and toxic pollution is to recycle all the electronic waste we’d normally throw into landfills.
Electronics Recycling makes a huge impact.
* Recovers valuable metals like copper, gold, and aluminum
* Less mining of these materials from the earth’s soil
* Big reductions in energy necessary to create and transport these metals
* Huge cuts in greenhouse gas emissions
* Minimizes destruction of natural ecosystems near mining areas
* Lessens displacement of local communities near mining areas
* Safeguards our water supplies by preventing dangerous lead and arsenic from leaching out of landfills.
* Provides good jobs in L.A. to people who need a second chance
Your donation will help Homeboy Recycling expand their programs that provide job training and employment opportunities sorely needed for people exiting California’s broken correctional system. Your support will allow their computer de-manufacturing program to grow to full capacity once more.  What Isidore calls 'demanufactuting' is manual disassembly of computers and it's the most efficient way to breakdown desktop computers for recycling. It's also the entry level job for their trainees. Depending on where the commodity market is, sometimes it makes financial sense to demanufacture computers into their component parts, and sometimes it doesn't. But since these are key entry level positions, Homeboy would love the support to be able to keep demanufacturing as a stable position for their workers, regardless of the market.",
  overview_headline: "",
  science_headline: "",
  news_headline:"",
  volunteer_headline:"",
  science: "")
project.save

campaign = Campaign.new(project_id: project.id, name: "2017 Isidore Recycling Campaign",
  description: "2017 Isidore Electronics Recycling Campaign",
  start_date: Time.strptime('01/01/2017 00:00:00', '%m/%d/%Y %H:%M:%S'),
  end_date: Time.strptime('06/30/2017 23:59:59', '%m/%d/%Y %H:%M:%S'),
  dollar_goal_in_cents: 100000,
  co2_per_dollar: 30,
  city: "Downtown Los Angeles",
  state: "CA",
  active: true)
campaign.save

image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/350x200-project/recycle-350x200.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# hero image
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/HighResProject/homeboy-recycling-isidore-project-hero-2880x1920.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# logo
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/PartnerLogo/HomeboyRecycling-isidore-logo",
  partner_id: partner.id,
  logo: true,
  )
image.save

# -------------
# GRID Alternatives
partner = Partner.new(location_id: loc.id,
  name: "GRID Alternatives",
  blurb: "Solar Power for Homeless Youth",
  description: "GRID Alternatives’ mission is to make renewable energy technology and job training accessible to underserved communities
A successful transition to clean, renewable energy is a must for our environment and to be truly successful, it must be just and include everyone in its benefits.
What they do is simple - using a volunteer model, they install solar electric systems for families in underserved communities at no-cost.  The impact however, is tremendous.
The GRID Alternatives Greater Los Angeles (GLA) office opened in 2007 and serves Los Angeles, Orange, and Ventura Counties.
GLA leads teams of volunteers and job trainees to install solar electric systems for low-income families in Los Angeles, Orange and Ventura Counties, providing families with needed savings and giving area workers hands-on experience to help them find employment in the green-tech economy.
Through this simple act, they are able to provide families a long-term solution to high energy bills, and offer community members hands-on experience that can help them obtain employment in the rapidly growing solar industry, all while producing clean energy and reducing carbon emissions.
Here in Los Angeles they work with a wide variety of partners:
* local municipalities, corporations and foundations to provide the solar systems
* businesses and community and technical colleges to provide job training
* nonprofit organizations, affordable housing providers, and other community organizations to reach the families they serve",
  volunteer: "GRID Alternatives is all about getting people like you involved in making the clean, green economy a reality. They rely on volunteers to help install solar panels on the roofs of projects like Safe Place For Youth, and for their everyday installations on low-income houses across the region.
It’s a fun, social, and a not too stressful process. No experience required, just the ability to climb up on a roof, do some basic physical work, and be open to coaching.
You’ll get trained for free and learn the kind of skills you can use to get a paid job with a solar power company.
Click here to learn more and sign up to volunteer with GRID Alternatives!",
  news: "")
partner.save

project = Project.new(partner_id: partner.id, name: "Solar Panels for Safe Place for Youth",
  blurb: "Climate Cents enables you to partner with GRID Alternatives to install solar power systems, free of charge, on the roofs of nonprofits serving our city.",
  description: "Climate Cents enables you to partner with GRID Alternatives to install solar power systems, free of charge, on the roofs of nonprofits serving our city’s most vulnerable population — homeless children and teens, women and men.
Rooftop solar cuts their energy bills to almost nothing, allowing them to focus resources on serving those in need.
Solar power produces zero greenhouse gas emissions or pollutants of any kind, which helps our planet in a big way, especially compared to the dirty coal that still fuels too much of L.A.’s electricity. In sunny Southern California, you can’t ask for a better energy source.
Plus, GRID Alternatives prioritizes job training and employment for people from the region’s disadvantaged communities, helping to build a green-tech economy where opportunity is more than a slogan.
Our first project is with Safe Place for Youth. Based in Venice, CA, its mission is to inspire, nurture, and empower the resilient human spirit of homeless youth by providing immediate and lasting solutions, one young person at a time.  The solar panels you install will enable Safe Place for Youth to power an energy-intensive 3D printing lab. Homeless teenagers there will learn cutting-edge technology and skills from leading professionals in the field to prepare them for good-paying careers.",
  overview_headline: "",
  science_headline: "",
  news_headline:"",
  volunteer_headline:"",
  science: "Solar power isn’t an obscure idea anymore. It’s a huge and growing industry. Its climate-change fighting power comes from the fact that it is replacing energy generated by dirty fossil fuels like coal, oil and natural gas.
Where your electricity comes from depends a lot on where you live. In some places, it depends on coal-burning power plants, in other places natural gas or oil, and in still other spots, nuclear fission, hydro-electric, solar, wind, geothermal. Most likely it’s some combination of these.
In Los Angeles, we get our power through the Los Angeles Department of Water and Power (LADWP). LADWP’s relied far too much on dirty coal plants based in Utah and Arizona 40% of the total! but it’s working to generate its electricity from cleaner sources.
This can’t happen overnight though, but it is possible to do your own part by contributing to local solar, distributed on the roofs of buildings across L.A.
The current level of carbon emissions per KWh (kilowatt hour) for DWP is approximately 10.7 lbs of CO2e per KWh.
The array of solar panels that GRID Alternatives installs will be 100% carbon free.
That means the solar rooftop system installed on Safe Place for Youth will:
* Produce 10,610 kWh per year of clean energy, 282,968 kWh over the 25 year lifetime of the system
* Offset 132 tons of greenhouse gas emissions (CO2e) over the next 25 years
* Save SPY an estimated $64,352 over 25 years
We determine your personal impact by figuring out the per dollar cost of reducing 1 lb of CO2 and then multiplying that number by the amount of money you contributed.
This project’s estimated system cost is $31,737, including: $16,234 in installation labor, permitting and engineering costs $15,503 in equipment (panels, inverters, and balance of system costs)
BOTTOM LINE: You reduce an additional 8.92 lbs of CO2 for every dollar you donate.")
project.save

campaign = Campaign.new(project_id: project.id, name: "2017 GRID Alternatives solar campaign",
  description: "2017 GRID Alternatives solar for Safe Place for Youth campaign",
  start_date: Time.strptime('01/01/2017 00:00:00', '%m/%d/%Y %H:%M:%S'),
  end_date: Time.strptime('10/31/2017 23:59:59', '%m/%d/%Y %H:%M:%S'),
  dollar_goal_in_cents: 100000,
  co2_per_dollar: 9,
  city: "Venice",
  state: "CA",
  active: true)
campaign.save

image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/350x200-project/solar-350x200.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# hero image
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/HighResProject/grid-project-hero-1011x584.jpg",
  partner_id: partner.id,
  logo: false,
  )
image.save

# logo
image = Image.new(
  aws_url: "https://s3.amazonaws.com/climatecents3/PartnerLogo/GridAlternatives-logo.png",
  partner_id: partner.id,
  logo: true,
  )
image.save

# --------------
# End

puts "#{Location.count} new Location(s)"
puts "#{Partner.count} new Partner(s)"
puts "#{Project.count} new Project(s)"
puts "#{Campaign.count} new Campaign(s)"
puts "#{Donation.count} new Donation(s)"
puts "#{Image.count} new Image(s)"
