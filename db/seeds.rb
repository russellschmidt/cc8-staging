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
  blurb:"Help Restore the Kelp Forests of the Santa Monica Bay",
  description: "<p>The Bay Foundation’s mission is to restore and enhance Santa Monica Bay through actions and partnerships that improve water quality, conserve and rehabilitate natural resources, and protect the Bay’s benefits and values.</p>
    <p>Nearly two million people live in the Santa Monica Bay Watershed stretching from Ventura County to Palos Verdes, from the Santa Monica Mountains and Griffith Park, to Baldwin Hills and out to the sea. More than 5,000 species of animals,
    fish, birds and plants make their home in the Bay and the Bay Watershed.</p>
    <p>The Bay Foundation (TBF)—also known as the Santa Monica Bay Restoration Foundation—is a 501(c) 3 non-profit environmental group founded in 1990 to restore and enhance Santa Monica Bay and local coastal waters. TBF is staffed by science
    and policy experts who are passionate about understanding and protecting the Bay and the Bay watershed, and all the benefits that a healthy ecosystem can provide all those who use and enjoy it.</p>
    <p>TBF works with a broad group of stakeholders, including government agencies, environmental groups, local communities, industry and scientists, to create and put into action innovative policies and projects that clean up our waterways,
    create green spaces in urban areas, and restore natural habitats both on land and underwater, such as wetlands and kelp forests.</p>
    <p>The Bay Foundation’s work stretches across 7 program areas – you can check them out at the links below:</p>
    <p>Rivers and Streams Coastal Wetlands and Lagoons Beaches and Dunes In the Ocean Clean Boating</p>
    <p>Green Neighborhoods Clean Bay Certified</p>
    <p>TBF is part of the U.S. EPA’s Santa Monica Bay National Estuary Program (NEP)—learn more about estuaries here. The SMBNEP is one of 28 similar programs established under Section 320 of the 1987 Clean Water Act and administered by the U.S. EPA.</p>
    <p>As part of the SMBNEP, TBF is the non-profit partner of the Santa Monica Bay Restoration Commission and the Santa Monica Bay Restoration Authority, and is focused on research, education, planning, cleanup efforts, and other priorities
    identified in the SMBNEP’s Bay Restoration Plan (BRP), a publicly-adopted comprehensive plan of action for protecting and restoring Santa Monica Bay. For more information on the entire SMBNEP, please visit the Background page.</p>
    <p>The implementation of the BRP has resulted in massive improvements to the human and environmental health of the region.</p>",
  volunteer: "<p>The Bay Foundation’s team makes many dives a year to restore kelp, clear urchins, and document the project’s progress.</p>
    <p>They are always looking for volunteer scientific divers who are AAUS certified.</p>
    <p>Opportunities include restoration, various types of monitoring, and photography. Boats go out weekends and weekdays through at least 2017.</p>
    <p><a href='https://act.myngp.com/Forms/8347929876959005440'>Click here</a> to learn more and sign up!</p>",
  news: "<h5>July 2016</h5>
    <p>More encouraging news about the power of kelp –</p>
    <p>A large-scale scientific study just confirmed what our partners at the Bay Foundation have pioneered – kelp can play a huge role in removing CO2 directly from our coastal waters, reducing ocean acidification caused by man-made climate change, restoring vibrant ecosystems and fighting global warming!</p>
    <p>‘Kelp is especially good at “soaking up excess nutrients and making waters cleaner for shellfish. Most academic papers looking at the benefits of kelp don’t even mention acidification. But it didn’t take much for Nichole Price of the Bigelow Laboratory for Ocean Science in Maine to put two and two together. “The biggest challenge in land-based kelp nurseries is keeping the pH low enough (i.e. the acidity high enough) because they consume so much CO2,” says Price, who wondered how those same photosynthetic algae were affecting ocean waters.</p>
    <p>In the end, says Waldbusser, “I always come back to restoration.” Replanting the seagrasses or shell banks that used to exist in an estuary is much safer, and often easier, than some industrial schemes. And, he adds, it probably comes with “built-in benefits that we don’t even recognize.” ‘</p>
    <p><a href='http://e360.yale.edu/feature/kelp_seagrass_slow_ocean_acidification_netarts/3013/'>http://e360.yale.edu/feature/kelp_seagrass_slow_ocean_acidification_netarts/3013/</a></p>
    <h5>November 2015</h5>
    <p>The Bay Foundation’s work to use kelp as a carbon sink is featured in a New Yorker magazine article by our friend Dana Goodyear:</p>
    <p>Tom Ford, ED of the Bay Foundation ‘refers to seaweed-sequestered carbon as “gourmet carbon,” but not because he’s trying to get people to eat it. The kelp forest is a potential carbon sink—problematic carbon, embodied, makes its way up the food chain until it reaches an apex predator, such as a shark, which when it dies sinks to the ocean floor—and it also rebuilds a decimated ecosystem, providing a place for fish to breed and feed, and for migrating gray whales to hide their young. The fishermen get reëmployed, and the coast is protected from storm surges and erosion. Besides, a kelp forest is an ecological refuge that can be installed in the only real estate that is readily available. “Where am I going to plant the giant forest in the middle of L.A. to sequester carbon?” Ford said.</p>
    <p>‘For the past two years, Ford and his colleagues have been bringing the forest back to life. Their method is simple: dive down with a hammer and smash most of the urchins they see. It has been remarkably effective, and thirty-four acres have been restored.</p>
    <p><a href='http://www.newyorker.com/magazine/2015/11/02/a-new-leaf'>http://www.newyorker.com/magazine/2015/11/02/a-new-leaf</a></p>")
partner.save

project = Project.new(partner_id: partner.id, name: "Bring Back the Bay's Kelp Forests",
  blurb: "You have a unique opportunity to preserve and expand kelp forests in the Santa Monica Bay, which have been devastated by a century of pollution.",
  description: "<p>Kelp is the most important &#8216;plant&#8217; (okay, technically photosynthetic algae) you’ve never thought much about. Kelp forests are the ocean’s tropical rainforests, providing habitats for more than 700 species
    of fish, invertebrates, and other algae. Ocean plants, including kelp, are so widespread and good at scrubbing carbon that they cycle through roughly the same amount of greenhouse gases every day as all the land-based plants.</p>
    <p>The foundation of the world’s most productive ecosystems, kelp plants efficiently remove the carbon that is causing our waters to grow acidic, squelching sea life like shellfish. Excess CO2 accumulates in the atmosphere and in the
    ocean as a result of human activity. The atmosphere warms, the ocean turns acidic. Restoring kelp forests enables rapid carbon sequestration, as the kelp grows so quickly. This approach reduces the CO2 in the atmosphere as well as the
    CO2 that’s dissolved in the ocean. Therefore funding kelp restoration benefits the atmosphere and the ocean. In addition this project increases local food security, retains local jobs, and may protect our coast from erosion. These all
    relate back to the threats our coast and lifestyle face as part of climate change.</p>
    <p>You have a unique opportunity to preserve and expand kelp forests in the Santa Monica Bay, which have been devastated by a century of pollution and mistreatment.</p>
    <p>Our partners at The Bay Foundation have already restored 39 acres and are working to double that amount. They and the fishermen they employ, dive several times a month with geological hammers and a passion for selectively culling the
    overpopulated purple urchins that are depriving the ecosystem of life.</p>
    <p>Within days of clearing the sea floor, the kelp quickly returns, eventually growing up to 2 feet per day, and begins to:</p>
    <ul>
      <li>sequester carbon</li>
      <li>clean, oxygenate and de-acidify the water</li>
      <li>support a multitude of marine life, restoring a flourishing ecosystem – seals, red urchin (the &#8216;uni&#8217; you can find with sushi platters), and all kinds of fish</li>
    </ul>",

  overview_headline: "The ocean absorbs an enormous amount of the planet's carbon and kelp is a key player in this process.",
  science_headline: "Kelp forests are the key to a carbon-absorbing, healthy offshore ecosystem.",
  news_headline:"#{partner.name} News",
  volunteer_headline:"Volunteer with #{partner.name}",
  science: "<p>Kelp is the best way to fight global warming that you’ve never heard of. Plant-like life in the ocean, from seagrasses to plankton, add up to just 0.05 percent of the plant biomass on land,
    but are so pervasive and efficient at sucking up carbon that they cycle through approximately the same amount of carbon every year as all land-based plants.</p>
    <p>Kelp is especially powerful. It grows at an amazing rate, up to 1 foot per day, making it one of the most productive ecosystems on earth.</p>
    <p>To make that happen locally, the folks at the Bay Foundation dive down and smash the parasitic purple urchins on the sea floor that have choked the ecosystem. As the kelp re-grows, it sucks CO2 directly
    from the water, incorporating the carbon into its stalks and fronds, like land plants do. Plants reach maturity after about 1 year. When the fronds break off and sink to the deep sea floor, they become
      sediment, sequestering the carbon for the long-term, out of the water and the atmosphere.</p>
    <p>When the stalks land nearby, the growth cycle begins again, sequestering more carbon and the process goes on. This process is especially important because our oceans absorb more than 30% of the CO2 we
    release into the atmosphere. As a result, the water is becoming increasingly acidic. Ocean acidification triggers the death of coral and hurts nearly all kinds of marine life, including the shellfish that
    billions of people rely on for food.</p>
    <p>By restoring 150 acres of kelp forest by 2017, the Bay Foundation’s program is projected to directly store up to 19.8 million lbs of CO2 over the next decade, according to calculations based on several
    peer-reviewed studies.</p>
    <p>But that’s not the end of the story. Kelp generates powerful multiplier effects. The re-growth of kelp forests leads to the flourishing of ecosystems that store and sequester even more carbon. The Bay
    Foundation’s data show that giant kelp density has more than tripled between 2013 and 2015, with increases in other types of algae, the number and size of red urchins, the diversity of fish species, and
    the overall biomass of fish such as kelp bass and sheephead. The increasing presence of coastal life translates into a more powerful system for sequestering and storing carbon.</p>
    <p>As cutting-edge research indicates, animals can play a key role in carbon storage. In the ocean and the coastal areas restored by kelp, animals such fish, &#8216;echinoderms&#8217; (sea urchins, sea
    stars) and oysters not only store carbon in their bodies (some of which gets sequestered permanently when thy die and fall to the sea floor), but also release carbonate minerals like CaCO2 directly into
    the water which lowers the water’s acidity and stores more carbon. The carbon burial capacity of marine vegetated habitats such as kelp forests is phenomenal, 180 times greater than the average burial
    rate in the open ocean.</p>
    <p>A recent report released by scientific institutes including the UNESCO International Oceanographic Commission has shown that as much as 7% of carbon dioxide (CO2) reductions we need can be achieved by
    protecting and restoring coastal plant life. Kelp can also suck up the excess nitrogen and phosphorous that comes from agricultural runoff and wastewater.</p>
    <p>There are some estimates that if we “accelerate seaweed production by 15% a year (the current growth rate is 9%) by 2050 that biomass will be able to remove eighteen per cent of the nitrogen and
    sixty-one per cent of the phosphorous contributed to the ocean by fertilizers annually, and will take up six per cent of the ocean’s emissions-related carbon.”</p>
    <p>Below is an explanation of how much carbon each of these factors reduce, individually and jointly and the scientific sources of this information.</p>
    <h5>Calculations</h5>
    <p>By surveying all relevant studies of kelp, our scientific partners at the Bay Foundation estimated that 23% of the carbon processed by kelp was stored physically on an on-going basis as
    &#8216;standing stock&#8217; and that additional 50% of that amount was transported to the deep sea environment.</p>
    <p>By restoring 150 acres of kelp forest by 2017, the Bay Foundation’s program is projected to directly store up to 19.8 million lbs of CO2 over the next decade. That’s equivalent of 32.7 lbs of
    CO2 per square meter, or 9786.83 lbs of CO2 per 300 square meter plot.</p>
    <p>As a result of the secondary and tertiary effects of kelp forest re-growth on the ecosystem, we estimate a multiplier factor of 1.75, which means that for that the total CO2 storage impact of
    300 acres will be 17,1127 lbs.</p>
    <p>We determine your personal impact by figuring out the per dollar cost of reducing 1 lb of CO2 and then multiplying that number by the amount of money you contributed. The cost of one dive to
    restore a 300 square meter plot is $1,000.</p>
    <p>BOTTOM LINE:</p>
    <p>You reduce an additional 17lbs of CO2 for every additional dollar you donate.</p>
    <h5>Sources for Kelp’s Direct Carbon Impact:</h5>
    <blockquote>Wilmers CC, Estes JA, Edwards M, Laidre KL, Konar B. 2012. <cite>&#8216;Do trophic cascades affect the storage and flux of atmospheric carbon? An analysis of sea otters and kelp
    forests,&#8217</cite>; Frontiers in Ecology and the Environment, doi:10.1890/110176.</blockquote>
    <blockquote>Dan Laffoley &amp; Gabriel Grimsditch, eds., 2009. The Management of Natural Coastal Carbon Sinks. UCN, Gland, Switzerland. 53 pp.
    <cite><a href='https://cmsdata.iucn.org/downloads/carbon_managment_report_final_printed_version_1.pdf'>https://cmsdata.iucn.org/downloads/carbon_managment_report_final_printed_version_1.pdf</a></cite></blockquote>
    <blockquote>Harrold C, Light K, Lisin S. 1998. <cite>Organic enrichment of submarine-canyon and continental-shelf benthic communities by macroalgal drift imported from nearshore kelp forests.</cite> Limnology and Oceanography, 4, doi: 10.4319/lo.1998.43.4.0669.</blockquote>
    <blockquote>Reed, D. C., Rassweiler, A. and Arkema, K. K. 2008. <cite>&#8216;Biomass Rather Than Growth Rate Determines Variation In Net Primary Production By Giant Kelp.&#8217;</cite> Ecology, 89: 2493–2505. doi:10.1890/07–1106.1</blockquote>
    <h5>Sources for Kelp’s Indirect Impact:</h5>
    <blockquote>Atwood TB, et al. 2014. <cite>Trophic-level dependent effects on CO2 emissions from experimental stream ecosystems</cite>, Global Change Biology, 20, 3386–3396, doi: 10.1111/gcb.12516.</blockquote>
    <blockquote>Bay Foundation, <cite>&#8216;Kelp Restoration Annual Report July 2014 – June 2015&#8217;</cite>
    <a href='http://www.santamonicabay.org/wp-content/uploads/2014/04/Kelp-Restoration-Annual-Report-October-2015-Final.pdf'>http://www.santamonicabay.org/wp-content/uploads/2014/04/Kelp-Restoration-Annual-Report-October-2015-Final.pdf</a></blockquote>
    <blockquote>Bradley RA, Bradley DW. 1993. <cite>Wintering shorebirds increase after kelp (Macrocystis) recovery.</cite> The Condor 95: 372–376.</blockquote>
    <blockquote>Claisse et al. 2013. <cite>Kelp forest restoration has the potential to increase sea urchin gonad biomass.</cite> Ecosphere 4(3):38.</blockquote>
    <blockquote>Dojiri M, Yamaguchi M, Weisberg SB, Lee HJ. 2003. <cite>Changing anthropogenic influence on the Santa Monica Bay watershed.</cite> Marine Environmental Research 56: 1–14.</blockquote>
    <blockquote>Duggins DO, Simenstad CA, Estes JA. 1989. <cite>Magnification of secondary production by kelp detritus in coastal marine ecosystems.</cite> Science 245: 170–173.</blockquote>
    <blockquote>Ford T, Meux B. 2010. <cite>Giant Kelp community restoration in Santa Monica Bay.</cite> Urban Coast 2: 43–46.</blockquote>
    <blockquote>Foster MS, Schiel DR. 2010. <cite>Loss of predators and the collapse of southern California kelp forests: Alternatives, explanations and generalizations.</cite> Journal of Experimental Marine Biology and Ecology 393: 59–70.</blockquote>
    <blockquote>Graham MH. 2004. <cite>Effects of local deforestation on the diversity and structure of southern California giant kelp forest food webs.</cite> Ecosystems 7: 341–357.</blockquote>
    <blockquote>Graham MH, Vasquez JA, Buschmann AH. 2007. <cite>Global ecology of the giant kelp Macrocystis: from ecotypes to ecosystems.</cite> Oceanography and Marine Biology: An Annual Review 45: 39–88.</blockquote>
    <blockquote>Harrold C, Reed DC. 1985. <cite>Food availability, sea urchin grazing, and kelp forest community structure.</cite> Ecology 66: 1160–1169.</blockquote>
    <blockquote>Kelly E, editor. 2005. <cite>The role of kelp in the marine environment.</cite> Irish Wildlife Manuals, No. 17. National Parks and Wildlife Service, Department of Environment, Heritage and Local Government, Dublin, Ireland.</blockquote>
    <blockquote>Schmitz OJ et al. 2014. <cite>&#8216;Animating the Carbon Cycle,&#8217;</cite> Ecosystems17: 344–359 DOI: 10.1007/s10021–013–9715–7, p. 349.</blockquote>
    <blockquote>Steneck RS, Graham MH, Bourque BJ, Corbett D, Erlandson JM, Estes JA, Tegner MJ. 2002. <cite>Kelp forest ecosystems: biodiversity, stability, resilience and future.</cite> Environ Conserv, 29(4):436–459.</blockquote>
    <blockquote>Strickland MS, Hawlena D, Reese A, Bradford MA, Schmitz OJ. 2013. <cite>Trophic cascade alters ecosystem carbon exchange.</cite> Proceedings of the National Academy of Sciences of the United States of America. 110(27):11035–11038. doi:10.1073/pnas.1305191110.</blockquote>
    <blockquote>Tegner MJ, Dayton PK. 2000. <cite>Ecosystem effects of fishing in kelp forest communities.</cite> ICES. Journal of Marine Science 57: 579–589.</blockquote>
    <blockquote>Wilmers CC, Estes JA, Edwards M, Laidre KL, Konar B. 2012. <cite>Do trophic cascades affect the storage and flux of atmospheric carbon? An analysis of sea otters and kelp forests,</cite> Frontiers in Ecology and the Environment, doi:10.1890/110176.</blockquote>
    <blockquote><cite>The Importance of &#8216;Blue Carbon&#8217; to Fighting Climate Change
    &#8216;Blue Carbon: The Role of Healthy Oceans in Binding Carbon&#8217;</cite>
    A new Rapid Response Assessment report released 14 October 2009 at the Diversitas Conference, Cape Town Conference Centre, South Africa. Compiled by experts at GRID-Arendal and UNEP in collaboration
     with the UN Food and Agricultural Organization (FAO) and the UNESCO International Oceanographic Commissions and other institutions, the report highlights the critical role of the oceans and
     ocean ecosystems in maintaining our climate and in assisting policy makers to mainstream an oceans agenda into national and international climate change initiatives.
     <a href='http://www.grida.no/publications/rr/blue-carbon/''>http://www.grida.no/publications/rr/blue-carbon/</a></blockquote>
    <blockquote>Dan Laffoley &amp; Gabriel Grimsditch, eds., <cite>The Management of Natural Coastal Carbon Sinks.</cite> 2009. UCN, Gland, Switzerland. 53 pp.
    <a href='https://cmsdata.iucn.org/downloads/carbon_managment_report_final_printed_version_1.pdf'>https://cmsdata.iucn.org/downloads/carbon_managment_report_final_printed_version_1.pdf</a></blockquote>",
  videoUrl: "https://www.youtube.com/embed/5KpA0DY_Wbo")

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
  description: "<p>In the early 1970’s, MEND — Meet Each Need with Dignity — opened its doors in an effort to transform the lives of the neediest residents of the Northeast San Fernando Valley – poor children and their struggling families</p>
    <p>Starting as a small group of volunteers working from a garage, MEND has grown primarily by word-of-mouth into the largest poverty agency in the San Fernando Valley, hosting 37,000 client visits per month.</p>
    <p>It stands out as one of the most efficient, leanest operating nonprofit in existence, thanks to its innovative use of volunteers giving more than 16,600 hours every month.</p>
    <p>Less than 6% of revenues go to overhead. Every other bit of support goes directly to programs that that provides emergency food, clothing, medical, vision and dental care, job skills training and job placement assistance,
    English as a Second Language classes, youth activities, and a Christmas program.</p>
    <p>Although MEND is dedicated to relieving the effects of poverty, its underlying mission is to provide the means and the path to self-sufficiency: to &#8216;break the bonds of poverty.&#8217; MEND provides the basic human
    needs vital to day-to-day survival as well as education, training, opportunities, and support essential to reducing and ultimately eliminating reliance on public and private assistance. Most importantly, MEND provides these
    services in a manner that maintains the dignity and self-esteem of recipients.</p>
    <p>Each month, more than 16,600 hours are donated by volunteers from a broad range of backgrounds and income levels; all joining together to act as people helping people. Each person plays a vital role in meeting the mission
    of MEND. From the distribution of food, clothing to assistance in job training and placement, volunteers give MEND life.</p>
    <h3>Grow Together</h3>
    <p>More than 75% of all MEND clients have household incomes of less than $10,000 per year, and that 48% suffer from a diet-related illness. In the poor neighborhoods in and aroud Pacoima, like communities across the country,
    growing numbers of people are suffering from their lack of access to healthy food they can afford. As a result, diet-related illness are skyrocketing.</p>
    <p>Grow Together tackles both these problems by empowering immigrant families to make use of their unique knowledge and skills. Though many of the families served by the program grew up in farming communities, they’ve lacked
    the resources here to start home gardens of their own.</p>
    <p>Launched in the spring of 2013, Grow Together is a community initiative created to empower disadvantaged families in the northeast San Fernando Valley to work towards self-reliance and greater food security. It promote
    good health to its participants through access to fresh produce, the exercise involved in gardening, and educational workshops on topics like cooking, canning, and nutrition.</p>
    <p>Participating families are also provided with fruit trees and tree care workshops. Grow Together families are given the opportunity to engage in an activity where they can come together and give back to their communities
    by sharing what they learned and harvested. Tomatoes, melons, squash, cucumbers, peppers, kale, chard, broccoli, cabbage, cauliflower, green beans, cilantro, basil, rosemary and thyme are just some of the most common crops.</p>
    <p>Families use the people and climate-friendly techniques out there </p>
    <ul>
      <li>Organic — no herbicides, pesticides, insecticides and petroleum-based fertilizers </li>
      <li>Drip irrigation and straw as crop cover to reduce water use </li>
      <li>Composting — turning plant waste into nourishment for the next generation of plants, not filling landfills </li>
      <li>No Till — Companion Planting – putting plants together whose needs and by-products complement each other. </li>
    </ul>
    <p>So far the project has built home gardens for 163 families, and provided the training and support to ensure their success.</p>
    <p>To combat hunger, build home gardens, and promote healthy and sustainable lifestyles, the MEND Grow Together Project has partnered with community organizations and individuals. In building all 163 home gardens, the MEND Grow Together
    Project works with the Sylmar High School Horticulture Department to provide participating families with seedlings. It is currently working with Master Gardeners and Master Food Preservers who provide the training for Grow Together families.
    More than 150 volunteers have dedicated their time to this program so far and in 2015 alone, volunteers contributed nearly 1,700 hours of service.</p>",
  volunteer: "<p>One of the reasons that MEND is amazing is because they are powered by volunteers.</p>
    <p>Like Climate Cents, they use their staff to manage an enthusiastic and talented group of every day people so their impact is multiplied many times over.</p>
    <p>There are endless opportunities to help out their work of supporting low-income families in the most dignified way possible.</p>
    <p>We suggest getting started with their Grow Together and Food Justice program.</p>
    <p>You can help out as a gardener, someone who helps sort fresh produce for the food pantry, and more.</p>
    <p><a href='https://act.myngp.com/Forms/8419987470996933376'>Click here</a> to sign up.</p>",
  news: "<p>The Story of Grow Together in the Los Angeles Daily News –</p>
    <a href='http://www.dailynews.com/lifestyle/20130920/mend-food-bank-teaches-residents-to-grow-their-own-fruits-vegetables'>http://www.dailynews.com/lifestyle/20130920/mend-food-bank-teaches-residents-to-grow-their-own-fruits-vegetables</a></p>")
partner.save

project = Project.new(partner_id: partner.id, name: "Urban Farming in Pacoima",
  blurb: "MEND's GROW TOGETHER program empowers low-income, immigrant families to grow their own food by creating and maintaining backyard gardens.",
  description: "<p>Little known fact — The earth’s soils store far more carbon than all of the plants in the world.
    <p>The problem — Industrial agriculture has transferred the soil’s carbon to the atmosphere, but we’re now learning how to reverse the trend.</p>
    <p>The solution — By using compost, cover crop, and no-till practices instead of fossil fuel-based fertilizers, we can sequester carbon in the soil, where it helps plants grow better.</p>
    <p>So we’re partnering with the best urban gardens and farms in Los Angeles to plant the seeds of this soil revolution.
    Our first project is with MEND in Pacoima. Their GROW TOGETHER program empowers low-income, immigrant families to grow their own food by providing the supplies and support necessary for creating and maintaining backyard gardens.
    It serves as a model for how farming close to home can transform the carbon cycle, while making our neighborhoods into vibrant centers of community and sustenance.</p>
    <p>Food grown close to home:</p>
    <ul>
      <li>Reduces the fossil fuels necessary to transport produce long distances</li>
      <li>Slashes the need for petroleum-based fertilizers</li>
      <li>Directs organic waste from families and the community into compost instead of landfills</li>
      <li>Lowers the number of car trips families make to the grocery store each week</li>
    </ul>
    <ul>Participating families:
      <li>Save money</li>
      <li>Eat a better, more healthy and nutritious diet</li>
      <li>Gain a new appreciation for where food comes from and value of time spent outdoors</li>
      <li>Alleviate stress</li>
      <li>Brings families and community together</li>
      <li>Maintain cultural traditions and sense of pride</li>
    </ul>
    <p>Many of these families come from agricultural backgrounds in their native countries and MEND empowers them to continue their healthy plant-based diets instead of assimilating to over-processed, less nutritious supermarket groceries.</p>",
  overview_headline: "",
  science_headline: "",
  news_headline:"#{partner.name} News",
  volunteer_headline:"Volunteer with #{partner.name}",
  science: "<p>Our global food system creates 20–30% of all human being’s greenhouse gas emissions. Meat and dairy production contribute disproportionately to that total, as does food waste. But other things matter too.</p>
    <p>The earth’s soils contain more than three times the amount of carbon as the atmosphere, and 4.5 times the amount of carbon as all living things.</p>
    <p>Industrial agricultural methods have massively depleted carbon from the earth’s soil, transferring it into the atmosphere, causing global warming, and into the water, causing ocean acidification.</p>
    <p>The good news is that it’s possible for the soils to start absorbing carbon again, potentially up to 15% of all global fossil fuel emissions each year.
    (All information drawn from Lal, R, et al. 2004. <cite>Soil Carbon Sequestration Impacts on Global Climate Change and Food Security.</cite> Science 304, 1623. DOI: 10.1126/science.1097396)</p>
    <p>The solution is going to take place across the world and at all scales.</p>
    <p>We can start with demonstration projects here in Los Angeles – urban gardens and farms that not only restore carbon to the soil, but also reduce the food system’s total greenhouse gas impact.<p>
    <p>There are at least 6 ways in which food that’s locally and organically grown, using composting, cover crop, and no-till methods, can fight climate change.</p>
    <ul>
      <li>Industrial fertilizer use is reduced</li>
      <li>Food waste becomes compost that’s plowed back into the soil, not landfill material that offgases carbon into the atmosphere</li>
      <li>Local vehicle trips to the supermarket decline</li>
      <li>Long-distance air and truck shipping of food declines</li>
      <li>Seasonal fresh fruits and vegetables replace some of the meat, dairy, and processed food consumption</li>
      <li>Carbon directly sequestered by woody plants, like fruit trees</li>
    </ul>
    <p>Below is an explanation of how much carbon each of these factors reduce, individually and jointly, in the case of MEND and the scientific sources of this information.
    We determine your personal impact by figuring out the per dollar cost of reducing 1 lb of CO2 and then multiplying that number by the amount of money you contributed.</p>
    <h5>Carbon Reductions Per Dollar Over The Project’s 5 Year Projected Life Span</h5>
    <h5>Composting as a Substitute for Industrial Fertilizer and as Soil Additive</h5>

    <h5>MEND families:</h5>
    <ul>
      <li>30 Pounds of Compost Generated per year 80% Estimated % of wet compost added to the garden</li>
      <li>Avoided Use of Industrial Fertilizer: 2.5 lbs of CO2 over 5 years</li>
      <li>Carbon Stored in Soils, Instead of Offgassed Through Landfilling: 121 lbs of CO2 over 5 years</li>
    </ul>
    <blockquote>
    Favoino E, Hogg L. 2008. <cite>The Potential Role of Compost in Reducing Greenhouse Gases.</cite> Waste Management & Research 26 (1): 61–69. doi:10.1177/0734242X08088584.
    </blockquote>
    <blockquote>
    Lou XF, Nair J. 2009. <cite>The Impact of Landfilling and Composting on Greenhouse Gas Emissions – A Review.</cite> Bioresource Technology, Selected papers from the International Conference on Technologies and Strategic Management of Sustainable Biosystems, 100 (16): 3792–98. doi:10.1016/j.biortech.2008.12.006.
    </blockquote>

    <h5>Local Vehicle Miles:</h5>
    <p>
    MEND clients most commonly drive cars like mid-late 1990s Nissan Altimas and Toyota Corollas. They avoid 1 round-trip per week to the grocery store, reducing total miles traveled by 208.
    For these cars, according to the EPA at www.FuelEconomy.Gov —
    </p>
    <ul>
      <li>Average city MPG: 17 Average carbon intensity of a gallon of gas: 446 grams CO2</li>
      <li>Total GHG Reduction Per Family Garden: 54 lbs of CO2 over 5 years</li>
      <li>Dietary Shift Toward More Local, Organic and Fruit/Vegetable-Based Diet</li>
    </ul>

    <h5>Rough Estimate: 1,323 lbs of CO2 over 5 years</h5>
    <blockquote>Weber CL, Matthews HS. 2008. <cite>Food-Miles and the Relative Climate Impacts of Food Choices in the United States.</cite> Environ. Sci. Technol., 2008, 42 (10), 3508–3513 DOI: 10.1021/es702969f.</blockquote>
    <blockquote>Kulak M, Graves A, Chatterton J. 2013. <cite>Reducing greenhouse gas emissions with urban agriculture: a Life Cycle Assessment perspective.</cite> Landscape Urban Plan, 111, 68–78.</blockquote>
    <blockquote><a href='http://www.davidsuzuki.org/what-you-can-do/food-and-our-planet/food-and-climate-change/'>http://www.davidsuzuki.org/what-you-can-do/food-and-our-planet/food-and-climate-change/</a></blockquote>
    <blockquote>Kim B, Neff R, <cite>Measurement and communication of greenhouse gas emissions from U.S. food consumption via carbon calculators.</cite> Ecological Economics (2009), doi:10.1016/j.ecolecon.2009.08.017</blockquote>
    <blockquote>Sarah DeWeerdt, '<cite>Is Local Food Better?</cite>,' World Watch Magazine, May/June 2009, Volume 22, No. 3. http://www.worldwatch.org/node/6064</blockquote>

    <h5>Direct Carbon Sequestration By Plants</h5>

    <p>MEND families plant an average of 3 fruit trees with their gardens. We assumed each tree will live, on average, for at least 25 years.
    We used the camphor tree as a baseline for calculations.
    Nearly 500 lbs of CO2 would be stored in the tree itself and anther 2,500 lbs of CO2 would be saved through lower energy use in cooling/heating systems.</p>
    <p>Total greenhouse gas reduction: 9,000 lbs of CO2 over 25 years</p>
    <blockquote><cite>CUFR Tree Carbon Calculator</cite>, developed by Center for Urban Forest Research, Pacific Southwest Research Station, US Forest Service, in partnership with the California
    Department of Forestry and Fire Protection. <a href='http://www.fs.usda.gov/ccrc/tools/tree-carbon-calculator-ctcc'>http://www.fs.usda.gov/ccrc/tools/tree-carbon-calculator-ctcc</a></blockquote>
    <p>MEND Greenhouse Reductions Per Garden: 10,500 lbs of CO2</p>
    <p>Budget: Lumber: $110 Soil: $69 Pins: $12 Irrigation: $60 Tools: $90 Composter: $20 Sales Tax: $36</p>
    <p>Operating Costs: $40</p>
    <p>Total: $438</p>
    <p>BOTTOM LINE:</p>
    <p>You reduce an additional 24 lbs of CO2 for every dollar you donate.</p>",
  videoUrl: "https://www.youtube.com/embed/PYFMGtR83Mk")
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
  description: "<p>Homeboy Recycling is building a world in which our resources – both human and natural – are valued, not wasted.</p>
    <p>Their mission is to make recycling electronics easy, secure and accessible, while creating employment opportunities for people who have successfully
    exited California’s correctional system. Founded by Kabira Stoke as Isidore Electronics Recycling, the enterprise is now part of the Homeboy Industries network.</p>
    <h5>Their Process</h5>
    <p>The process begins by weighing and sorting all electronic devices received. All items with sensitive data are flagged for Secure Data Destruction.
    Working devices then go to the Reuse Department and non-working devices go to the Materials Recovery Department.</p>
    <h5>REUSE</h5>
    <p>Homeboy believes that the highest form of recycling is reuse. Many of the items that they receive still have useful life left in them.
    When permitted by their customers, they repair and refurbish those devices to rigorous R2 standards of functionality, then put them back out into the market.</p>
    <p>The sale of pre-owned electronics keeps electronics out of our landfills, decreases consumption of natural resources, and supplies low cost devices that can
    help bridge the digital divide. That’s a WIN-WIN-WIN. Reuse also creates more and higher skilled jobs than materials recovery does. That’s another WIN.</p>
    <h5>MATERIALS RECOVERY</h5>
    <p>Electronics that have no useful life left in them are recycled responsibly in accordance with Isidore’s industry-leading R2 certification.
    They partner with specialized and certified material recovery facilities to ensure that the valuable natural resources contained in electronics are reprocessed into new goods.
    This reduces the need to mine new resources.</p>
    <p>Electronics are also unfortunately responsible for a large percentage of toxins in our landfills. To protect our soil, water, and air, Homeboy has a Zero Landfill Policy.
    They never landfill, incinerate, or illegally export any e-waste.</p>
    <h5>CERTIFICATION</h5>
    <p>As an R2 certified company, Homeboy has undergone extensive third party auditing to ensure that its processes are safe for its workers and responsible towards the environment.</p>
    <p>Homeboy’s Core Values — in their own words</p>
    <p>We believe in second chances. For those who have served their time and are ready to positively contribute to society, and for the precious resources in our old electronics.</p>
    <p>We believe in public safety. Our landfills are overflowing. Our prisons are overflowing. The toxins in our landfills get into our drinking water, into our ground soil,
    into our lives. 98% of people who go to prison come out of prison to our communities. If we haven’t rehabilitated them, they go back to prison – often after having committed more
    crimes. That is not public safety. There is no “away” when we throw something away. The public will be truly safe when we keep electronics out of landfills and people out of prison.</p>
    <p>We believe in being truly green. We are always striving to be as environmentally correct as possible. We vigilantly seek new solutions and the most innovative ways to reclaim our resources.</p>
    <p>We believe in the power of work. Work gives us purpose. It gives us pride, dignity, and self-respect. It gives us self-worth. Work is a tool of healing and of rehabilitation; it is our most powerful crime-fighter.</p>
    <p>We believe in doing no harm. The systems that were designed to help people are hurting people. We have a moral obligation to examine and better them. Immediately.</p>
    <p>We believe in the power of public-private partnerships. Businesses can and should partner with government to solve problems. Period.</p>
    <p>We believe that today’s companies must embrace a triple bottom line. There is no room for a modern business to be anything but socially and environmentally responsible.
    This new generation of business knows that there is a value in social good that is comparable to monetary value, and is equipped to tackle huge, gnarly problems with efficiency and style.</p>",
  volunteer: "<p>Homeboy Recycling depends on getting your old electronics and computers to work its magic.</p>
    <p>If you have materials, you can bring them to their facilities, free of charge:</p>
    <p>Monday through Friday: 10:00am - 1:30pm and 2:30 - 5:30pm</p>
    <address>1769 Naud St, Los Angeles, CA 90012</address>
    <p>They’re especially interested in arranging a contributions from organizations like businesses, nonprofits, and governments who have a lot of material for disposal. Homeboy Recycling offers competitive pricing for its certified, secure, and responsible e-waste solutions.</p>
    <p>To schedule a pickup and get a quote, call <a href='tel:13232223322'>(323) 222–3322</a> or email <a href='mailto:info@isidorerecycling.com'>info@isidorerecycling.com</a>.</p>",
  news: "<p>Check out Kabira Stokes’ TED talk on the unlikely story how she came to start and run a triple bottom line social enterprise</p>
    <p><iframe src='https://www.youtube.com/embed/sg18KmcTYXA' frameborder='0' allowfullscreen></iframe></p>")
partner.save

project = Project.new(partner_id: partner.id, name: "Recycle Electronics, Rebuild Lives",
  blurb: "Your donation will help Homeboy Recycling expand their electronics recycling program that provides job training and employment.",
  description: "<p>One of the best ways to reduce greenhouse gas emissions and toxic pollution is to recycle all the electronic waste we’d normally throw into landfills.</p>
    <p>Electronics Recycling makes a huge impact.</p>
    <ul>
      <li>Recovers valuable metals like copper, gold, and aluminum</li>
      <li>Less mining of these materials from the earth’s soil</li>
      <li>Big reductions in energy necessary to create and transport these metals</li>
      <li>Huge cuts in greenhouse gas emissions</li>
      <li>Minimizes destruction of natural ecosystems near mining areas</li>
      <li>Lessens displacement of local communities near mining areas</li>
      <li>Safeguards our water supplies by preventing dangerous lead and arsenic from leaching out of landfills.</li>
      <li>Provides good jobs in L.A. to people who need a second chance</li>
    </ul>
    <p>Your donation will help Homeboy Recycling expand their programs that provide job training and employment opportunities sorely needed for people exiting California’s broken
    correctional system. Your support will allow their computer de-manufacturing program to grow to full capacity once more.  What Isidore calls 'demanufactuting' is manual disassembly
    of computers and it's the most efficient way to breakdown desktop computers for recycling. It's also the entry level job for their trainees. Depending on where the commodity market
    is, sometimes it makes financial sense to demanufacture computers into their component parts, and sometimes it doesn't. But since these are key entry level positions, Homeboy would
    love the support to be able to keep demanufacturing as a stable position for their workers, regardless of the market.</p>",
  overview_headline: "",
  science_headline: "",
  news_headline:"#{partner.name} News",
  volunteer_headline:"Volunteer with #{partner.name}",
  science: "<p>The science behind the climate-change fighting power of Isidore’s e-recycling program is simple.</p>
    <p>Computers make our world go around. We rely on them for almost everything. But producing them requires truckloads of metals – copper, aluminum, steel – for basic parts and even precious metals like gold, palladium, and platinum for specialized components.</p>
    <p>The mining usually required to collect and process these metals is incredibly destructive to the environment. Communities are often displaced from mining sites, through force or by the horrible physical effects. The amount of energy required for mining, processing, and transportation of metals is enormous.</p>
    <p>It’s much less energy-intensive and much less socially and environmentally harmful to recycle the materials already in computers and other electronics.</p>
    <p>Scientists have extensively documented how these process work through various scientific studies.</p>
    <p>The field is advanced enough that an e-waste calculator has already been created in form that automates the e-recycling’s emission and pollution reduction calculations.</p>
    <p>We used this calculator, available at http://e-stewards.org/e-stewards-global-impact-calculator/ for our partnership with Homeboy. There is an extensive documentation file to show the sources of various figures, equations and assumptions available publicly.</p>
    <p>Here are the starting points for our situation:</p>
    <p>Homeboy Recycling’s revenue from the sale of recovered metals has plummeted due to the weakening of commodities markets. Operating their computer de-manufacturing program would involve a financial loss for them of approximately $1 per computer. So we offered to cover the gap between the revenues they earn from commodity sales and the costs of continuing the program. Climate Cents will make the difference between the program existing and it disappearing. For that reason, we feel comfortable taking credit for the entire amount of carbon reduction achieved by recycling each month’s flow of computers.</p>
    <p>If one employee is assigned to the program, Homeboy will process 1,250 desktop computers each month.</p>
    <p>The following reductions result from recycling that amount of material:</p>
    <p>GHG reduced: 45,000 lbs</p>
    <p>Toxic metals diverted: 164 lbs Lead: 55 lbs Arsenic: 110 lbs</p>
    <p>Metal recycled: 15,000 lbs Steel: 6,826 lbs Aluminum: 512 lbs Copper: 295 lbs Gold: 84 lbs Palladium: 0.38 lbs Platinum: 0.06 lbs</p>
    <p>We determine your personal impact by figuring out the per dollar cost of reducing 1 lb of CO2 and then multiplying that number by the amount of money you contributed.</p>
    <p>Homeboy’s monthly cost to Climate Cents is $1,500.</p>
    <p>Homeboy’s expenses include salary for the front-line worker and a small amount of time for supervision/guidance, the minimal wear and tear on equipment which causes depreciation, and small overhead costs.</p>
    <p>BOTTOM LINE:</p>
    <p>You reduce an additional 30 lbs of CO2(e) for every dollar you donate.</p>",
  videoUrl: "https://www.youtube.com/embed/21T5ERwjjEQ")
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
  description: "<p>GRID Alternatives’ mission is to make renewable energy technology and job training accessible to underserved communities.</p>
    <p>A successful transition to clean, renewable energy is a must for our environment and to be truly successful, it must be just and include everyone in its benefits.</p>
    <p>What they do is simple - using a volunteer model, they install solar electric systems for families in underserved communities at no-cost.  The impact however, is tremendous.</p>
    <p>The GRID Alternatives Greater Los Angeles (GLA) office opened in 2007 and serves Los Angeles, Orange, and Ventura Counties.
    GLA leads teams of volunteers and job trainees to install solar electric systems for low-income families in Los Angeles, Orange and Ventura Counties, providing families
    with needed savings and giving area workers hands-on experience to help them find employment in the green-tech economy.</p>
    <p>Through this simple act, they are able to provide families a long-term solution to high energy bills, and offer community members hands-on experience
    that can help them obtain employment in the rapidly growing solar industry, all while producing clean energy and reducing carbon emissions.</p>
    <p>Here in Los Angeles they work with a wide variety of partners:</p>
    <ul>
      <li>local municipalities, corporations and foundations to provide the solar systems</li>
      <li>businesses and community and technical colleges to provide job training</li>
      <li>nonprofit organizations, affordable housing providers, and other community organizations to reach the families they serve</li>
    </ul>",
  volunteer: "<p>GRID Alternatives is all about getting people like you involved in making the clean, green economy a reality. They rely on volunteers to help
    install solar panels on the roofs of projects like Safe Place For Youth, and for their everyday installations on low-income houses across the region.</p>
    <p>It’s a fun, social, and a not too stressful process. No experience required, just the ability to climb up on a roof, do some basic physical work, and be open to coaching.
    You’ll get trained for free and learn the kind of skills you can use to get a paid job with a solar power company.
    <a href='https://act.myngp.com/Forms/8131757094845221632'>Click here</a> to learn more and sign up to volunteer with GRID Alternatives!</p>",
  news: "<h5>July 2016</h5>
    <p>GRID was just featured in a KCRW piece about building a green economy with opportunity for all – by our friend Avishay Artsy. It’s a wonderful story, well-told.</p>
    <p><a href='http://www.kcrw.com/news-culture/shows/design-and-architecture/solar-training-dream-cities-hollywood-interiors'>http://www.kcrw.com/news-culture/shows/design-and-architecture/solar-training-dream-cities-hollywood-interiors</a></p>")
partner.save

project = Project.new(partner_id: partner.id, name: "Solar Panels for Safe Place for Youth",
  blurb: "Climate Cents enables you to partner with GRID Alternatives to install solar power systems, free of charge, on the roofs of nonprofits serving our city.",
  description: "<p>Climate Cents enables you to partner with GRID Alternatives to install solar power systems, free of charge, on the roofs of nonprofits serving our city’s
    most vulnerable population — homeless children and teens, women and men.</p>
    <p>Rooftop solar cuts their energy bills to almost nothing, allowing them to focus resources on serving those in need.</p>
    <p>Solar power produces zero greenhouse gas emissions or pollutants of any kind, which helps our planet in a big way, especially compared to the dirty coal that still fuels
    too much of L.A.’s electricity. In sunny Southern California, you can’t ask for a better energy source.</p>
    <p>Plus, GRID Alternatives prioritizes job training and employment for people from the region’s disadvantaged communities, helping to build a green-tech economy where opportunity is more than a slogan.</p>
    <p>Our first project is with Safe Place for Youth. Based in Venice, CA, its mission is to inspire, nurture, and empower the resilient human spirit of homeless youth by providing
    immediate and lasting solutions, one young person at a time.  The solar panels you install will enable Safe Place for Youth to power an energy-intensive 3D printing lab.
    Homeless teenagers there will learn cutting-edge technology and skills from leading professionals in the field to prepare them for good-paying careers.</p>",
  overview_headline: "",
  science_headline: "",
  news_headline:"#{partner.name} News",
  volunteer_headline:"Volunteer with #{partner.name}",
  science: "<p>Solar power isn’t an obscure idea anymore. It’s a huge and growing industry. Its climate-change fighting power comes from the fact that it is replacing energy generated by dirty fossil fuels like coal, oil and natural gas.</p>
    <p>Where your electricity comes from depends a lot on where you live. In some places, it depends on coal-burning power plants, in other places natural gas or oil, and in still other spots, nuclear fission, hydro-electric, solar, wind, geothermal. Most likely it’s some combination of these.</p>
    <p>In Los Angeles, we get our power through the Los Angeles Department of Water and Power (LADWP). LADWP’s relied far too much on dirty coal plants based in Utah and Arizona 40% of the total! but it’s working to generate its electricity from cleaner sources.</p>
    <p>This can’t happen overnight though, but it is possible to do your own part by contributing to local solar, distributed on the roofs of buildings across L.A.</p>
    <p>The current level of carbon emissions per KWh (kilowatt hour) for DWP is approximately 10.7 lbs of CO2e per KWh.</p>
    <p>The array of solar panels that GRID Alternatives installs will be 100% carbon free.</p>
    <p>That means the solar rooftop system installed on Safe Place for Youth will:</p>
    <ul>
    <li>Produce 10,610 kWh per year of clean energy, 282,968 kWh over the 25 year lifetime of the system</li>
    <li>Offset 132 tons of greenhouse gas emissions (CO2e) over the next 25 years</li>
    <li>Save SPY an estimated $64,352 over 25 years</li>
    </ul>
    <p>We determine your personal impact by figuring out the per dollar cost of reducing 1 lb of CO2 and then multiplying that number by the amount of money you contributed.</p>
    <p>This project’s estimated system cost is $31,737, including: $16,234 in installation labor, permitting and engineering costs $15,503 in equipment (panels, inverters, and balance of system costs).</p>
    <p>BOTTOM LINE: You reduce an additional 8.92 lbs of CO2 for every dollar you donate.</p>",
videoUrl: "https://www.youtube.com/embed/bjt7ICudF_4")
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
