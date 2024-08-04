// class Plant {
//   final int plantId;

//   final String plantName;
//   final String imageURL;

//   // Added attributes
//   String siteSelection;
//   String locationclimate;
//   String sunlight;
//   String wind;
//   String soil;
//   String preparation;
//   String circulation;
//   String chosenVarieties;
//   String plantingSteps;
//   String careMaintenance;
//   String diseasePestManagement;
//   String pollination;
//   String harvest;

//   Plant({
//     required this.plantId,
//     required this.plantName,
//     required this.imageURL,
//     this.siteSelection = '',
//     ///
//     this.locationclimate='',
//      this.sunlight='',
//       this.soil='',
//        this.preparation='',
//         this.circulation='',
//         this.wind='',
//         //
//     this.chosenVarieties = '',
//     this.plantingSteps = '',
//     this.careMaintenance = '',
//     this.diseasePestManagement = '',
//     this.pollination = '',
//     this.harvest = '',
//   });

//   // List of Plants data
//   static List<Plant> plantList = [
//     Plant(
//       plantId: 0,
//       plantName: 'Orange',
//       imageURL: 'assets/icons/fruit-three.png',
//       siteSelection: '''
// Warm and sunny:
// Sunlight: Select a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flowering and fruit development.
// Protection from wind: Citrus trees can be susceptible to wind damage. Choose a sheltered location or provide wind protection structures if needed.
// Soil: Well-drained, fertile soil with a slightly acidic pH (6.0-7.0) is ideal. Sandy loam or loamy soil with good organic matter content is preferred. Conduct a soil test to determine any necessary amendments.
// ''',
// locationclimate: ' Citrus trees thrive in warm, subtropical climates with mild winters. Ideal temperatures are between 60°F and 85°F (15°C and 29°C). They are sensitive to frost and prolonged cold spells.',
//       chosenVarieties: '''
// Consider factors like: ripening season, fruit size and quality, disease resistance, chilling tolerance (for cooler climates), container suitability (for dwarf varieties).
// Popular choices:
//     Oranges: 'Navel,' 'Valencia,' 'Cara Cara'
//     Lemons: 'Eureka,' 'Meyer'
//     Grapefruits: 'Ruby Red,' 'Marsh Seedless'
//     Limes: 'Mexican,' 'Key Lime'
//     Research: Investigate varieties recommended for your specific region and chilling tolerance if you live in an area with cooler winters. Consider dwarf varieties for container growing in limited spaces.
// ''',
//       plantingSteps: '''
// Timing: Plant citrus trees in spring or early summer during warm weather when the danger of frost has passed.
// Spacing: Depending on variety and mature tree size, space citrus trees 15-25 feet apart. Dwarf varieties may require less space.
// Digging: Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.
// Planting: Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot. Citrus trees are also sensitive to underwatering, which can affect fruit production.
// Fertilization: Citrus trees are moderate feeders. Apply a balanced fertilizer formulated for citrus trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive leaf growth at the expense of fruit production.
// Pruning: Prune young trees to establish a strong structure and encourage branching. Prune mature trees lightly and annually to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape.
// Mulching: Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.
// ''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.
// Monitor regularly: Look for signs of common citrus diseases like citrus greening, canker, and scab. Watch for pests like aphids, scales, and mealybugs.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.
// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety, typically 6-12 months after flowering. Signs of ripeness include a change in fruit color from green to the characteristic color of the variety (orange, yellow, etc.), softening of the flesh, and a fragrant aroma.
// Harvesting: Use sharp pruners or hand shears to carefully clip citrus fruits from the tree when ripe. Avoid damaging the fruit or stem. Pick fruits with a slight twist to detach them from the branch.
// ''',
//     ),
//     Plant(
//       plantId: 1,
//       plantName: 'Banana',
//       imageURL: 'assets/icons/fruit-five.png',
//       siteSelection: '''


// -Warmth is key: Bananas thrive in warm, humid climates with consistent temperatures above 65°F (18°C). They are sensitive to frost and cold snaps.
// -Sunlight: Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily.
// -Wind protection: While bananas enjoy good air circulation, strong winds can damage leaves and stems. Consider planting in a sheltered location or providing wind protection structures.
// -Soil: Well-drained, fertile soil with a slightly acidic pH (6.0-6.5) is ideal. Loamy or sandy loam soil with good organic matter content is preferred. Conduct a soil test to determine any necessary amendments.
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season, fruit size and quality, suitability for your climate, cooking vs. dessert bananas.
// Popular choices: Cavendish (common grocery store variety), 'Ice Cream' banana (sweet and creamy), 'Manzano' (cooking banana).
// Research: Investigate dwarf varieties or those suited for container growing if space is limited.
// ''',
//       plantingSteps: '''
// Propagation: Bananas are typically propagated by suckers or pups, which are young shoots that emerge from the base of a mature plant.
// Selection: Choose healthy suckers with a well-developed root system.
// Timing: Plant suckers in spring or early summer during warm weather.
// Spacing: Depending on variety and mature plant size, space banana plants 8-15 feet apart.
// Digging: Dig a hole large enough to comfortably accommodate the root ball of the sucker.
// Planting: Carefully position the sucker, ensuring the base of the pseudostem (false stem) is slightly above the soil surface. Backfill the hole and water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Bananas require consistent moisture throughout the growing season. Water deeply and regularly, allowing the soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.
// Fertilization: Bananas are heavy feeders and benefit from regular fertilization throughout the growing season. Use a balanced fertilizer formulated for bananas or potassium-rich fertilizers to promote fruit production.
// Mulching: Apply a thick layer of organic mulch around the base of the plant to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.
// Supporting Structures: Banana plants can grow quite tall and may require support, especially in windy areas. Stakes or poles can be used to provide support for the main stem and bunches of bananas.
// ''',
//       diseasePestManagement: '''
// Prevention is key: Maintain good sanitation by removing fallen leaves and debris around the plant. Choose disease-resistant varieties if possible.
// Monitor regularly: Look for signs of common banana diseases like black sigatoka (leaf spot disease) and bunchy top virus.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.
// ''',
//       harvest: '''
// Bunch development: A healthy banana plant will produce a single bunch of bananas in its lifetime. The bunch will develop from a flower bud that emerges from the top of the pseudostem.
// Ripening time: Ripening time varies depending on the variety, typically 3-5 months after flowering. Signs of ripeness include a change in fruit color (from green to yellow), softening of the flesh, and a fragrant aroma.
// Harvesting: Use a sharp knife to carefully cut the banana bunch from the stem.
// ''',
//     ),
//     Plant(
//       plantId: 2,
//       plantName: 'Guava',
//       imageURL: 'assets/icons/fruit-sixcg2.png',
//       siteSelection: '''
// Warm and humid: Guava trees thrive in warm, humid climates with mild winters. Ideal temperatures are between 68°F and 82°F (20°C and 28°C). They can tolerate light frost, but prolonged cold spells can damage the trees and fruit production.
// Sunlight: Select a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flowering and fruit development.
// Soil: Guava trees are adaptable to various soil types but perform best in well-drained, fertile soil with a slightly acidic to neutral pH (5.0-7.0). Sandy loam or loamy soil with good organic matter content is ideal.
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season, fruit size and quality, disease resistance, chilling tolerance (for cooler climates), self-pollination vs. cross-pollination needs.
// Popular choices: 'Red Indian,' 'Apple Guava,' 'Peruvian Guava' (self-pollinating)
// Research: Investigate varieties recommended for your specific region and chilling tolerance if you live in an area with cooler winters.
// ''',
//       plantingSteps: '''
// Timing: Plant guava trees in spring or early summer during warm weather when the danger of frost has passed.
// Spacing: Depending on variety and mature tree size, space guava trees 10-20 feet apart. Dwarf varieties may require less space.
// Digging: Dig a hole large enough to comfortably accommodate the root ball of the tree.
// Planting: Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.
// ''',
//       careMaintenance: '''
// 4. Care and Maintenance:
// Watering: Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.
// Fertilization: Guava trees are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive leaf growth at the expense of fruit production.
// Pruning: Prune young trees to establish a strong structure and encourage branching. Prune mature trees lightly and annually to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape.
// Mulching: Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.
// ''',
//       diseasePestManagement: '''
// 5. Disease and Pest Management:
// Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.
// Monitor regularly: Look for signs of common guava diseases like anthracnose, canker diseases, and guava rust.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.
// ''',
//       harvest: '''
// 6. Harvest:
// Ripening time: Varies depending on the variety, typically 3-4 months after flowering. Signs of ripeness include a change in fruit color from green to yellow or red (depending on variety), softening of the flesh, and a fragrant aroma.
// Harvesting: Use sharp pruners or hand shears to carefully pick guava fruits from the tree when ripe. Avoid damaging the fruit or stem.
// ''',
//     ),
//     Plant(
//       plantId: 3,
//       plantName: 'Apple',
//       imageURL: 'assets/icons/fruit-sevena.png',
//       siteSelection: '''
//           Climate: Apples thrive in cool climates with well-defined seasons. Research chill hour requirements for your chosen apple variety.
//           Sunlight: Select a location with at least 6-8 hours of direct sunlight daily.
//           Soil: Loamy, well-drained soil with a slightly acidic pH (6.0-6.8) is ideal. Conduct a soil test to determine amendments needed.
//           Preparation: Till the soil well several months before planting to remove weeds and debris. Ensure proper drainage to prevent root rot.
//       ''',
//       chosenVarieties: '''
//              Consider factors like ripening season, disease resistance, pollination needs (some varieties require cross-pollination with another variety).
//              Popular choices: Gala, Golden Delicious, Granny Smith, McIntosh (research suitability for your region).
//       ''',
//       plantingSteps: '''
//              Timing: Plant bare-root trees in late winter/early spring while dormant.
//              Spacing: Spacing depends on variety and rootstock. Generally, dwarf trees require 10-15 feet between trees, while standard trees need 20-30 feet.
//              Dig a hole: Twice the diameter of the root ball and slightly deeper.
//              Planting: Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole, tamping gently to remove air pockets. Water thoroughly.
//       ''',
//       careMaintenance: '''
//             Watering: Water deeply and regularly, especially during the first few years and during dry periods. Aim for moist, but not soggy, soil.
//             Pruning: Prune young trees to establish a strong structure and encourage fruit production. Prune mature trees annually to remove dead, disease.
//             Fertilization: Apply fertilizer according to soil test results and tree age. Over-fertilization can reduce fruit quality.
//             Mulching: Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, and regulate soil temperature.''',
//       diseasePestManagement: '''
//             Prevention is key: Choose disease-resistant varieties and practice good sanitation by removing fallen leaves and debris.
//             Monitor regularly: Look for signs of common apple diseases like apple scab, fire blight, and cedar apple rust.
//             Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.
//       ''',
//       pollination: ''' 
//           Some apple varieties require cross-pollination: Plant two or more compatible varieties within 100 feet of each other to ensure fruit set. Alternatively, consider planting a grafted tree with two or more varieties on a single rootstock.
//           Pollinators: Bees are the primary pollinators for apples. Planting flowering plants near the orchard can attract bees.''',
//       harvest: ''' 
//            Ripening time: Varies depending on the variety. Use a fruit tester to determine ripeness. An apple is ready to harvest when it yields slightly to gentle pressure near the stem.
//            Harvesting: Pick apples carefully by hand, twisting the fruit gently to detach it from the branch.
//            Handling: Handle apples with care to avoid bruising. Store them in a cool, humid place like a cold cellar.
//    ''',
//     ),
//     Plant(
//       plantId: 4,
//       plantName: 'Grape',
//       imageURL: 'assets/icons/fruit-grape12.png',
//       siteSelection: '''
// Climate: Grapes thrive in temperate climates with warm days and cool nights. Choose a location with sufficient sunlight (ideally 6-8 hours daily) and good air circulation to prevent disease. Avoid frost pockets where cold air can settle.
// Soil: Well-drained, sandy loam soil with a pH between 6.0 and 6.8 is ideal. Conduct a soil test to determine amendments needed for optimal drainage and nutrient content.
// Preparation: Till the soil well several months before planting to remove weeds and debris. Install a trellis system to support the growing vines. Trellis posts should be sturdy and spaced according to your chosen vine spacing.
// ''',
//       chosenVarieties: ''' 
// Consider factors like: intended use (wine, table grapes, juice), ripening season, disease resistance, climate suitability.
// Popular choices:
// Wine grapes: Cabernet Sauvignon, Merlot, Chardonnay, Pinot Noir
// Table grapes: Thompson Seedless, Flame Seedless, Crimson Seedless
// Research: Investigate varieties recommended for your specific region.
// ''',
//       plantingSteps: ''' 
// Timing: Plant grapevines in early spring when the soil temperature warms up.
// Spacing: Spacing depends on variety, trellis system, and desired vine size. Generally, space vines 6-10 feet apart within the row, with 8-10 feet between rows.
// Digging holes: Dig holes deep and wide enough to accommodate the root ball comfortably.
// Planting: Carefully position the vine, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole, tamping gently to remove air pockets. Water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Water deeply and regularly, especially during the first few years and during dry periods. Aim for moist, but not soggy, soil.
// Pruning: Grapes require regular pruning throughout the growing season to control vine size, encourage fruit production, and improve air circulation. Different pruning techniques are used for different varieties and vine ages. Research the specific pruning method for your chosen variety.
// Fertilization: Apply fertilizer according to soil test results and vine age. Over-fertilization can reduce fruit quality.
// Trellising: Train the vine shoots onto the trellis system as they grow. This ensures proper vine structure, sunlight exposure, and facilitates future pruning and harvesting.
//  ''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and practice good sanitation by removing debris and fallen leaves around the base of the vines.
// Monitor regularly: Look for signs of common grape diseases like powdery mildew, downy mildew, and botrytis bunch rot.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.
// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety. Grapes are typically ready to harvest when they reach their characteristic color and sugar content. Consult a refractometer to measure sugar levels for optimal harvest timing.
// Harvesting: Grapes are delicate and require careful handling. Use sharp pruners to clip bunches from the vine.
// Handling: Handle grapes with care to avoid bruising. Store them in a cool, well-ventilated area for short-term storage. For long-term storage, consult specific methods based on intended use (wine grapes vs. table grapes).
// ''',
//     ),
//     Plant(
//       plantId: 5,
//       plantName: 'Mango',
//       imageURL: 'assets/icons/fruit-nine2.png',
//       siteSelection: '''
// Climate: Choose a location with consistent warmth (ideally above 70°F) and minimal frost risk.
// Sunlight: Select a sunny location with at least 6-8 hours of direct sunlight daily.
// Soil: Well-drained, sandy loam soil with a slightly acidic pH (5.5-7.0) is ideal. Conduct a soil test for necessary amendments.
// Preparation: Till the soil deeply several months before planting to remove weeds and debris. Ensure proper drainage to prevent root rot.
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season, fruit size and quality, disease resistance, suitability for your climate.
// Popular choices: 'Tommy Atkins,' 'Kent,' 'Ataulfo,' 'Honey Mango'
// Research: Investigate varieties recommended for your specific region.
// ''',
//       plantingSteps: '''
// Timing: Plant mango trees in spring or early summer during the warm season.
// Spacing: Depending on variety, space trees 20-40 feet apart to allow for mature canopy size.
// Planting: Dig a hole wider and deeper than the root ball. Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole, tamping gently to remove air pockets. Water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Water deeply and regularly, especially during the first few years and during dry periods. Allow the soil to dry slightly between waterings.
// Pruning: Prune young trees to establish a strong structure and encourage fruit production. Prune mature trees lightly to remove dead, diseased, or overcrowded branches.
// Fertilization: Apply fertilizer according to soil test results and tree age. Mangoes generally benefit from a balanced fertilizer with potassium for fruit quality.
// Mulching: Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, and regulate soil temperature.
// ''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and practice good sanitation by removing fallen leaves and debris around the tree.
// Monitor regularly: Look for signs of common mango diseases like anthracnose, powdery mildew, and bacterial black spot.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.
// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety, typically 3-5 months after flowering. Signs of ripeness include color change, softening of the flesh, and a fragrant aroma.
// Harvesting: Use sharp pruners to carefully pick mangoes from the tree. Avoid damaging the stem or fruit.
// Handling: Handle mangoes with care to avoid bruising. Store them at room temperature until ripe, then refrigerate for short-term storage.
// ''',
//     ),
//     Plant(
//       plantId: 6,
//       plantName: 'Peaches',
//       imageURL: 'assets/icons/fruit-one.png',
//       siteSelection: '''
// Temperate with mild winters: Peaches thrive in temperate climates with warm summers (70-85°F) and cool winters with sufficient chilling hours (400-800 hours below 45°F). They are sensitive to late spring frosts that can damage flowers and developing fruits.
// Sunlight: Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flower bud development and fruit ripening.
// Air circulation: Select a site with good air circulation to help prevent fungal diseases. Avoid planting in low-lying areas prone to frost pockets.
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season (early, mid, or late), chilling hour requirements, disease resistance, fruit size and quality, self-pollination vs. cross-pollination needs.
// Popular choices:
// Self-pollinating: 'Reliance,' 'Bonanza,' 'Florida Prince'
// Cross-pollinating (need another variety nearby): 'Elberta,' 'Halehaven,' 'Redhaven'
// Research: Investigate varieties recommended for your specific region and chilling hour requirements. Consider self-pollinating varieties if you only have space for one tree.
// ''',
//       plantingSteps: '''
// Timing: Plant bare-root peach trees in late winter/early spring while dormant. Container-grown trees can be planted throughout the growing season, but spring is still preferred.
// Spacing: Depending on variety and mature tree size, space peach trees 15-20 feet apart. Dwarf varieties may require less space.
// Digging: Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.
// Planting: Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.
// Fertilization: Peach trees are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive vegetative growth and reduce fruit production.
// Pruning: Prune young trees to establish a strong structure and encourage branching. Prune mature trees annually during dormancy (late winter) to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape. Proper pruning also helps improve air circulation and light penetration within the canopy, which can reduce disease issues.
// Thinning: Once fruits have set, it's crucial to thin them to improve fruit size and quality. Aim for 6-8 inches spacing between peaches on the branch. Thinning can be done by hand-picking or carefully removing excess fruits with pruners.
// Supporting: As peach trees mature and bear fruit, the branches can become laden and susceptible to breaking. Provide support structures like stakes or trellises to help distribute the weight of the fruit and maintain branch integrity.
// ''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.
// Monitor regularly: Look for signs of common peach diseases like bacterial spot, peach leaf curl, and brown rot. Watch for pests like aphids, plum curculio, and oriental fruit moth.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.
// ''',
//       pollination: '''

// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety, typically 3-4 months after flowering. Signs of ripeness include a change in fruit color from green to yellow or blushed red (depending on variety), softening of the flesh around the stem, and a fragrant aroma.
// Harvesting: Gently twist the peach to detach it from the branch when ripe. Avoid pulling or tugging, which can damage the fruit and the tree.
// ''',
//     ),
//     Plant(
//       plantId: 7,
//       plantName: 'Pomegranate',
//       imageURL: 'assets/icons/fruit-four.png',
//       siteSelection: '''
// Warm and sunny: Pomegranates thrive in warm, dry climates with long, hot summers. Ideal temperatures are consistently above 70°F (21°C) with minimal frost. They are sensitive to prolonged cold and freezing temperatures.
// Sunlight: Select a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flower and fruit development.
// Drainage: Pomegranates are sensitive to waterlogged soil. Choose a location with well-drained soil, especially in areas with high rainfall. Raised beds can be beneficial in areas with poor drainage.
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season, fruit size and quality, disease resistance, chilling requirements (for some varieties), thorniness (thorned vs. thornless).
// Popular choices:
// 'Wonderful': Large, juicy arils, self-pollinating
// 'Parfianka': Sweet flavor, thornless variety
// 'Granada': Early-ripening, good for cooler climates
// Research: Investigate varieties recommended for your specific region and chilling requirements if you experience cooler winters. Consider thornless varieties for easier maintenance.

// ''',
//       plantingSteps: '''
// Timing: Plant pomegranate trees in spring or early summer during warm weather when the danger of frost has passed.
// Spacing: Depending on variety and mature tree size, space pomegranate trees 15-20 feet apart.
// Digging: Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.
// Planting: Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Pomegranates are drought-tolerant once established, but require regular watering during the first few years and during dry periods. Allow the soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.
// Fertilization: Pomegranates are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive foliage growth at the expense of fruit production.
// Pruning: Prune young trees to establish a strong structure and encourage branching. Prune mature trees lightly and annually to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape. Pomegranate trees respond well to pruning and can be trained into various shapes.
// Mulching: Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.
// ''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.
// Monitor regularly: Look for signs of common pomegranate diseases like fungal diseases (anthracnose, botrytis rot) and bacterial blight. Watch for pests like aphids, mealybugs, and scale insects.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.
// ''',
//       pollination: '''

// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety, typically 4-7 months after flowering. Signs of ripeness include a change in fruit color from green to red or yellow-red (depending on variety), softening of the skin, and a metallic sound when tapped.
// Harvesting: Use sharp pruners or hand shears to carefully cut the pomegranates from the tree when ripe. Avoid damaging the fruit.
// ''',
//     ),
//     Plant(
//       plantId: 8,
//       plantName: 'Melon',
//       imageURL: 'assets/icons/fruit-nine2.png',
//       siteSelection: '''
// Warm and sunny: Watermelons thrive in warm climates with long, hot summers. Ideal temperatures are consistently above 70°F (21°C). They are sensitive to frost and cool weather.
// Sunlight: Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal fruit growth and sweetness development.
// Soil: Well-drained, fertile soil with a sandy loam texture is ideal. Watermelons have moderate water needs, but good drainage is essential to prevent root rot. A slightly acidic pH (6.0-6.8) is preferred. Conduct a soil test to determine any necessary amendments.
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season (early, mid, or late), chilling hour requirements, disease resistance, fruit size and quality, self-pollination vs. cross-pollination needs.
// Popular choices:
// Self-pollinating: 'Harcot,' 'Goldcot,' 'Tilton'
// Cross-pollinating (need another variety nearby): 'Moorpark,' 'Royal,' 'Canino'
// Research: Investigate varieties recommended for your specific region and chilling hour requirements. Consider self-pollinating varieties if you only have space for one tree.
// ''',
//       plantingSteps: '''
// Timing: Plant watermelon seeds outdoors directly in the garden after the danger of frost has passed and soil temperatures are consistently warm (at least 70°F).
// Seeding: Sow watermelon seeds directly into the soil, planting 1-2 inches deep in hills spaced 3-4 feet apart. Plant 3-4 seeds per hill and thin to the single strongest seedling after germination.
// Starting indoors (optional): In cooler climates, you can start watermelon seeds indoors 3-4 weeks before transplanting outdoors. However, be mindful of root disturbance when transplanting.
// ''',
//       careMaintenance: '''
// Watering: Watermelons have moderate water needs. Water deeply and regularly, especially during hot and dry periods. Avoid overhead watering, which can promote fungal diseases. Aim to moisten the soil but not saturate it.
// Weeding and Mulching: Regularly weed around watermelon plants to control competition for water and nutrients. Apply a layer of organic mulch around the base of the plants to retain moisture, suppress weeds, and regulate soil temperature.
// Pollination: Watermelons benefit from bee pollination. You can attract pollinators by planting flowering companion plants near your watermelons. If hand pollination is needed, carefully transfer pollen from male flowers (smaller, yellow flowers) to female flowers (larger flowers with a small fruit developing at the base).
// Vining and Support (optional): Watermelon vines can sprawl across the ground. While not strictly necessary, providing some support structures like trellises or tomato cages can help keep the fruits off the ground, improve air circulation, and potentially reduce pest and disease issues.
// ''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the plants. Rotate crops in your garden bed to minimize disease buildup in the soil.
// Monitor regularly: Look for signs of common watermelon diseases like powdery mildew, anthracnose, and bacterial wilt. Watch for pests like aphids, cucumber beetles, and squash bugs.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.
// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety, typically 70-90 days after planting. Signs of ripeness include a dull thud when thumped, a yellowing of the underside where the melon rests on the soil, and a tendril near the stem turning brown and dry.
// Harvesting: Use a sharp knife to carefully cut the watermelon from the vine, leaving a short stem attached.
// ''',
//     ),
//     Plant(
//       plantId: 9,
//       plantName: 'Appricot',
//       imageURL: 'assets/icons/fruit-nine2.png',
//       siteSelection: '''
// Temperate with mild winters: Apricots thrive in cool to temperate climates with warm summers (70-85°F) and winters with sufficient chilling hours (400-800 hours below 45°F). They are sensitive to late spring frosts that can damage flowers and developing fruits.
// Sunlight: Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flower bud development and fruit ripening.
// Air circulation: Select a site with good air circulation to help prevent fungal diseases. Avoid planting in low-lying areas prone to frost pockets.
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season (early, mid, or late), chilling hour requirements, disease resistance, fruit size and quality, self-pollination vs. cross-pollination needs.
// Popular choices:
// Self-pollinating: 'Harcot,' 'Goldcot,' 'Tilton'
// Cross-pollinating (need another variety nearby): 'Moorpark,' 'Royal,' 'Canino'
// Research: Investigate varieties recommended for your specific region and chilling hour requirements. Consider self-pollinating varieties if you only have space for one tree.
// ''',
//       plantingSteps: '''
// Timing: Plant bare-root apricot trees in late winter/early spring while dormant. Container-grown trees can be planted throughout the growing season, but spring is still preferred.
// Spacing: Depending on variety and mature tree size, space apricot trees 15-20 feet apart. Dwarf varieties may require less space.
// Digging: Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.
// Planting: Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.
// Fertilization: Apricot trees are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive vegetative growth and reduce fruit production.
// Pruning: Prune young trees to establish a strong structure and encourage branching. Prune mature trees annually during dormancy (late winter) to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape. Proper pruning also helps improve air circulation and light penetration within the canopy, which can reduce disease issues.
// Thinning: Once fruits have set, it's crucial to thin them to improve fruit size and quality. Aim for 4-6 inches spacing between apricots on the branch. Thinning can be done by hand-picking or carefully removing excess fruits with pruners.
// Supporting: As apricot trees mature and bear fruit, the branches can become laden and susceptible to breaking. Provide support structures like stakes or trellises to help distribute the weight of the fruit and maintain branch integrity.
// ''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.
// Monitor regularly: Look for signs of common apricot diseases like bacterial spot, brown rot, and canker diseases. Watch for pests like aphids, plum curculio, and Japanese beetles.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.
// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety, typically 2-3 months after flowering. Signs of ripeness include a change in fruit color from green to orange or yellow (depending on variety), softening of the flesh, and a fragrant aroma.
// Harvesting: Gently pull or twist the apricot from the branch when ripe. Avoid pulling or tugging, which can damage the fruit and the tree.
// ''',
//     ),
//     Plant(
//       plantId: 10,
//       plantName: 'Dates',
//       imageURL: 'assets/icons/fruit-four.png',
//       siteSelection: '''
// Hot and arid: Date palms thrive in hot, dry climates with long summers (above 85°F) and mild winters with minimal frost. They are sensitive to freezing temperatures and cannot tolerate extended periods of cold.
// Sunlight: Select a location with full sun, receiving at least 8-10 hours of direct sunlight daily. This is crucial for optimal flower and fruit development.
// Soil: Well-drained, sandy loam soil with good aeration is ideal. Dates are tolerant of slightly alkaline soils (pH 7.0-8.0).
// ''',
//       chosenVarieties: '''
// Consider factors like: ripening season (if applicable in your region), fruit size and quality, whether the variety is male or female (dates require both for fruit production), cold tolerance (for borderline climates).
// Important note: Most date palm varieties require both a male and female tree for fruit production. Male trees do not produce dates, but they pollinate the female trees. If space is limited, some self-pollinating varieties are available but may have lower fruit yields.
// Popular choices:
// Female (fruit-bearing): 'Medjool,' 'Deglet Noor,' 'Barhi'
// Male (pollinators): 'Khalas,' 'Hayani'
// Research: Investigate varieties recommended for your specific region and climate. Consult with local nurseries or agricultural extension offices for guidance on suitable varieties and potential challenges in your area.''',
//       plantingSteps: '''
// Timing: Plant date palms in spring or early summer during warm weather when the danger of frost has passed.
// Spacing: Depending on variety and mature tree size, space date palms 20-30 feet apart. Consider the mature height and spread of both male and female trees when planning your planting layout.
// Digging: Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.
// Planting: Carefully position the tree, ensuring the base of the trunk is slightly above the soil surface. Backfill the hole and water thoroughly.
// ''',
//       careMaintenance: '''
// Watering: Date palms are surprisingly drought-tolerant once established but require regular watering during the first few years and during dry periods. Allow the soil to dry slightly between waterings. Deep watering is crucial to encourage root development.
// Fertilization: Date palms have moderate to high fertilizer needs, especially in nutrient-poor soils. Apply a balanced fertilizer formulated for palm trees according to soil test results and tree age. Avoid overfertilization, which can lead to excessive foliage growth at the expense of fruit production.
// Pruning: Minimal pruning is typically required for date palms. However, you can remove dead, diseased, or damaged fronds throughout the year. Avoid excessive pruning, as it can reduce fruit production.
// Suckers: Date palms may produce suckers (shoots) at the base of the trunk. These can be removed if not desired for additional trees.''',
//       diseasePestManagement: '''
// Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.
// Monitor regularly: Look for signs of common apricot diseases like bacterial spot, brown rot, and canker diseases. Watch for pests like aphids, plum curculio, and Japanese beetles.
// Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.
// ''',
//       harvest: '''
// Ripening time: Varies depending on the variety, typically 4-7 years after planting for the first fruit set, and then annually thereafter. Signs of ripeness include a change in fruit color from green to yellow, brown, or red (depending on variety), softening of the flesh, and a sticky, sugary coating developing on the fruit.
// Harvesting: Use sharp pruners or a long-handled harvesting tool to carefully cut date bunches from the tree when ripe. Be aware that date bunches can be very heavy.
// ''',
//     )
//   ];
// }
