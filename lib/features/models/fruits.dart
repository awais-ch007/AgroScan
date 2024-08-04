class Plant {
  final int plantId;

  final String plantName;
  final String imageURL;

  // Added attributes

  String locationclimate;
  String sunlight;
  String wind;
  String soil;
  String step1url;

  String factors;
  String popularchoices;
  String step2url;

  String timing;
  String spacing;
  String digging;
  String planting;
  String step3url;

  String watering;
  String pruning;
  String fertilization;
  String mulching;
  String step4url;

  String prevention;
  String monitor;
  String treatment;
  String step5url;

  String pollination;

  String harvest;
  String ripening;
  String harvesting;
  String step6url;

  Plant({
    required this.plantId,
    required this.plantName,
    required this.imageURL,

    ///
    this.locationclimate = '',
    this.sunlight = '',
    this.soil = '',
    this.wind = '',
    this.step1url = '',
    //

    this.factors = '',
    this.popularchoices = '',
    this.step2url = '',
    //

    this.timing = '',
    this.digging = '',
    this.spacing = '',
    this.planting = '',
    this.step3url = '',
    //

    this.watering = '',
    this.pruning = '',
    this.fertilization = '',
    this.mulching = '',
    this.step4url = '',

    //

    this.prevention = '',
    this.monitor = '',
    this.treatment = '',
    //
    this.pollination = '',
    this.step5url = '',
    //
    this.harvest = '',
    this.ripening = '',
    this.harvesting = '',
    this.step6url = '',
  });

  // List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        plantName: 'Orange',
        imageURL: 'assets/icons/fruit-three.png',
        locationclimate:
            ' Citrus trees thrive in warm, subtropical climates with mild winters. Ideal temperatures are between 60°F and 85°F (15°C and 29°C). They are sensitive to frost and prolonged cold spells.',
        sunlight:
            'Select a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flowering and fruit development.',
        wind:
            'Citrus trees can be susceptible to wind damage. Choose a sheltered location or provide wind protection structures if needed.',
        soil:
            'Well-drained, fertile soil with a slightly acidic pH (6.0-7.0) is ideal. Sandy loam or loamy soil with good organic matter content is preferred. Conduct a soil test to determine any necessary amendments.',
        step1url: 'assets/icons/orange1.png',
        factors:
            'Consider factors like: ripening season, fruit size and quality, disease resistance, chilling tolerance (for cooler climates), container suitability (for dwarf varieties).',
        popularchoices: '''
Oranges: 'Navel,' 'Valencia,' 'Cara Cara'
Lemons: 'Eureka,' 'Meyer'
Grapefruits: 'Ruby Red,' 'Marsh Seedless'
Limes: 'Mexican,' 'Key Lime'
Research: Investigate varieties recommended for your specific region and chilling tolerance if you live in an area with cooler winters. Consider dwarf varieties for container growing in limited spaces.
''',
        step2url: 'assets/icons/orange2.png',
        timing:
            ' Plant citrus trees in spring or early summer during warm weather when the danger of frost has passed.',
        spacing:
            ' Depending on variety and mature tree size, space citrus trees 15-25 feet apart. Dwarf varieties may require less space.',
        digging:
            'Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.',
        planting:
            'Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.',
        step3url: 'assets/icons/orange3.png',
        watering:
            'Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot. Citrus trees are also sensitive to underwatering, which can affect fruit production.',
        fertilization:
            'Citrus trees are moderate feeders. Apply a balanced fertilizer formulated for citrus trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive leaf growth at the expense of fruit production.',
        pruning:
            'Citrus trees are moderate feeders. Apply a balanced fertilizer formulated for citrus trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive leaf growth at the expense of fruit production.',
        mulching:
            'Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.',
/////////////////////////////////////////////////////////////
        ///
        step4url: 'assets/icons/orange4.png',
        step6url: 'assets/icons/orange6.png',
        prevention:
            'Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.',
        monitor:
            'Monitor regularly: Look for signs of common citrus diseases like citrus greening, canker, and scab. Watch for pests like aphids, scales, and mealybugs.',
        treatment:
            'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.',
        step5url: 'assets/icons/orange5.png',
        ripening:
            'Ripening time: Varies depending on the variety, typically 6-12 months after flowering. Signs of ripeness include a change in fruit color from green to the characteristic color of the variety (orange, yellow, etc.), softening of the flesh, and a fragrant aroma.',
        harvesting:
            'Use sharp pruners or hand shears to carefully clip citrus fruits from the tree when ripe. Avoid damaging the fruit or stem. Pick fruits with a slight twist to detach them from the branch.'),
    Plant(
      plantId: 1,
      plantName: 'Apple',
      imageURL: 'assets/icons/fruit-sevena.png',
      locationclimate:
          'Apples thrive in cool climates with well-defined seasons. Research chill hour requirements for your chosen apple variety.',
      sunlight:
          'Select a location with at least 6-8 hours of direct sunlight daily.',
      soil:
          'Loamy, well-drained soil with a slightly acidic pH (6.0-6.8) is ideal. Conduct a soil test to determine amendments needed.',
      wind:
          'Till the soil well several months before planting to remove weeds and debris. Ensure proper drainage to prevent root rot.',
      step1url: 'assets/icons/apple1.png',
      factors:
          '  Consider factors like ripening season, disease resistance, pollination needs (some varieties require cross-pollination with another variety).',
      popularchoices:
          'Gala, Golden Delicious, Granny Smith, McIntosh (research suitability for your region).',
      step2url: 'assets/icons/apple2.png',
      timing:
          'Plant bare-root trees in late winter/early spring while dormant.',
      spacing:
          'Spacing depends on variety and rootstock. Generally, dwarf trees require 10-15 feet between trees, while standard trees need 20-30 feet.',
      digging:
          'Dig a hole: Twice the diameter of the root ball and slightly deeper.',
      planting:
          'Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole, tamping gently to remove air pockets. Water thoroughly.',
      step3url: 'assets/icons/apple3.png',
      watering:
          'Water deeply and regularly, especially during the first few years and during dry periods. Aim for moist, but not soggy, soil.',
      pruning:
          'Prune young trees to establish a strong structure and encourage fruit production. Prune mature trees annually to remove dead, disease.',
      fertilization:
          'Apply fertilizer according to soil test results and tree age. Over-fertilization can reduce fruit quality.',
      mulching:
          'Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, and regulate soil temperature.',
      step4url: 'assets/icons/apple4.png',
      prevention:
          ' Prevention is key: Choose disease-resistant varieties and practice good sanitation by removing fallen leaves and debris.',
      monitor:
          'Monitor regularly: Look for signs of common apple diseases like apple scab, fire blight, and cedar apple rust.',
      treatment:
          ' Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.',
      step5url: 'assets/icons/apple5.png',
      ripening:
          'Ripening time: Varies depending on the variety. Use a fruit tester to determine ripeness. An apple is ready to harvest when it yields slightly to gentle pressure near the stem.',
      harvesting:
          '''  Harvesting: Pick apples carefully by hand, twisting the fruit gently to detach it from the branch.
           Handling: Handle apples with care to avoid bruising. Store them in a cool, humid place like a cold cellar.''',
      step6url: 'assets/icons/apple6.png',
    ),
    Plant(
      plantId: 2,
      plantName: 'Grape',
      imageURL: 'assets/icons/fruit-grape12.png',
      locationclimate:
          'Grapes thrive in temperate climates with warm days and cool nights. Choose a location with sufficient sunlight (ideally 6-8 hours daily) and good air circulation to prevent disease. Avoid frost pockets where cold air can settle.',
      sunlight:
          'Well-drained, sandy loam soil with a pH between 6.0 and 6.8 is ideal. Conduct a soil test to determine amendments needed for optimal drainage and nutrient content.',
      soil:
          'Till the soil well several months before planting to remove weeds and debris. Install a trellis system to support the growing vines. Trellis posts should be sturdy and spaced according to your chosen vine spacing.',
      wind:
          'Good air circulation is essential for grapevines. It helps prevent fungal diseases, promotes even ripening, and allows for faster drying after rain or dew, reducing the risk of fruit rot.',
      step1url: 'assets/icons/grape1.png',
      factors:
          'Consider factors like: intended use (wine, table grapes, juice), ripening season, disease resistance, climate suitability.',
      popularchoices: '''
Wine grapes: Cabernet Sauvignon, Merlot, Chardonnay, Pinot Noir
Table grapes: Thompson Seedless, Flame Seedless, Crimson Seedless
Research: Investigate varieties recommended for your specific region.
''',
      step2url: 'assets/icons/grape2.png',
      timing:
          'Plant grapevines in early spring when the soil temperature warms up.',
      spacing:
          'Spacing depends on variety, trellis system, and desired vine size. Generally, space vines 6-10 feet apart within the row, with 8-10 feet between rows.',
      digging:
          'Digging holes: Dig holes deep and wide enough to accommodate the root ball comfortably.',
      planting:
          'Carefully position the vine, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole, tamping gently to remove air pockets. Water thoroughly.',
      step3url: 'assets/icons/grape3.png',
      watering:
          'Water deeply and regularly, especially during the first few years and during dry periods. Aim for moist, but not soggy, soil.',
      pruning:
          'Grapes require regular pruning throughout the growing season to control vine size, encourage fruit production, and improve air circulation. Different pruning techniques are used for different varieties and vine ages. Research the specific pruning method for your chosen variety.',
      fertilization:
          'Apply fertilizer according to soil test results and vine age. Over-fertilization can reduce fruit quality.',
      mulching:
          'Train the vine shoots onto the trellis system as they grow. This ensures proper vine structure, sunlight exposure, and facilitates future pruning and harvesting.',
      step4url: 'assets/icons/grape4.png',
      prevention:
          'Prevention is key: Choose disease-resistant varieties and practice good sanitation by removing debris and fallen leaves around the base of the vines.',
      monitor:
          'Monitor regularly: Look for signs of common grape diseases like powdery mildew, downy mildew, and botrytis bunch rot.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.',
      step5url: 'assets/icons/grape5.png',
      ripening:
          'Ripening time: Varies depending on the variety. Grapes are typically ready to harvest when they reach their characteristic color and sugar content. Consult a refractometer to measure sugar levels for optimal harvest timing.',
      harvesting: '''
Harvesting: Grapes are delicate and require careful handling. Use sharp pruners to clip bunches from the vine.
Handling: Handle grapes with care to avoid bruising. Store them in a cool, well-ventilated area for short-term storage. For long-term storage, consult specific methods based on intended use (wine grapes vs. table grapes).
''',
      step6url: 'assets/icons/grape5.png',
    ),
    Plant(
      plantId: 3,
      plantName: 'Banana',
      imageURL: 'assets/icons/fruit-five.png',
      locationclimate:
          'Warmth is key:Bananas thrive in warm, humid climates with consistent temperatures above 65°F (18°C). They are sensitive to frost and cold snaps.',
      sunlight:
          'Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily.',
      wind:
          '-Wind protection: While bananas enjoy good air circulation, strong winds can damage leaves and stems. Consider planting in a sheltered location or providing wind protection structures.',
      soil:
          'Well-drained, fertile soil with a slightly acidic pH (6.0-6.5) is ideal. Loamy or sandy loam soil with good organic matter content is preferred. Conduct a soil test to determine any necessary amendments.',
      step1url: 'assets/icons/banana1.png',
      step4url: 'assets/icons/banana4.png',
      step5url: 'assets/icons/banana5.png',
      step6url: 'assets/icons/banana5.png',
      factors:
          'Consider factors like: ripening season, fruit size and quality, suitability for your climate, cooking vs. dessert bananas.',
      popularchoices: '''
Cavendish (common grocery store variety), 'Ice Cream' banana (sweet and creamy), 'Manzano' (cooking banana).
Research: Investigate dwarf varieties or those suited for container growing if space is limited.
''',
      step2url: 'assets/icons/banana2.png',
      timing: 'Plant suckers in spring or early summer during warm weather.',
      spacing:
          'Depending on variety and mature plant size, space banana plants 8-15 feet apart.',
      digging: '''
Propagation: Bananas are typically propagated by suckers or pups, which are young shoots that emerge from the base of a mature plant.
Selection: Choose healthy suckers with a well-developed root system.
Digging: Dig a hole large enough to comfortably accommodate the root ball of the sucker.
''',
      planting:
          'Carefully position the sucker, ensuring the base of the pseudostem (false stem) is slightly above the soil surface. Backfill the hole and water thoroughly.',
      step3url: 'assets/icons/banana3.png',
      watering:
          'Bananas require consistent moisture throughout the growing season. Water deeply and regularly, allowing the soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.',
      pruning:
          'Supporting Structures: Banana plants can grow quite tall and may require support, especially in windy areas. Stakes or poles can be used to provide support for the main stem and bunches of bananas.',
      fertilization:
          'Bananas are heavy feeders and benefit from regular fertilization throughout the growing season. Use a balanced fertilizer formulated for bananas or potassium-rich fertilizers to promote fruit production.',
      mulching:
          'Apply a thick layer of organic mulch around the base of the plant to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.',
      prevention:
          'Prevention is key: Maintain good sanitation by removing fallen leaves and debris around the plant. Choose disease-resistant varieties if possible.',
      monitor:
          'Monitor regularly: Look for signs of common banana diseases like black sigatoka (leaf spot disease) and bunchy top virus.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.',
      ripening: '''
Bunch development: A healthy banana plant will produce a single bunch of bananas in its lifetime. The bunch will develop from a flower bud that emerges from the top of the pseudostem.
Ripening time: Ripening time varies depending on the variety, typically 3-5 months after flowering. Signs of ripeness include a change in fruit color (from green to yellow), softening of the flesh, and a fragrant aroma.
''',
      harvesting:
          'Harvesting: Use a sharp knife to carefully cut the banana bunch from the stem.',
    ),
    Plant(
      plantId: 4,
      plantName: 'Guava',
      imageURL: 'assets/icons/fruit-sixcg2.png',
      step1url: 'assets/icons/guava1.png',
      step2url: 'assets/icons/guava2.png',
      step3url: 'assets/icons/guava3.png',
      step4url: 'assets/icons/guava4.png',
      step5url: 'assets/icons/guava5.png',
      step6url: 'assets/icons/guava6.png',
      locationclimate:
          'Guava trees thrive in warm, humid climates with mild winters. Ideal temperatures are between 68°F and 82°F (20°C and 28°C). They can tolerate light frost, but prolonged cold spells can damage the trees and fruit production.',
      sunlight:
          'Select a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flowering and fruit development.',
      soil:
          'Guava trees are adaptable to various soil types but perform best in well-drained, fertile soil with a slightly acidic to neutral pH (5.0-7.0). Sandy loam or loamy soil with good organic matter content is ideal.',
      wind:
          'Guava trees can handle moderate winds. In fact, gentle wind can help with pollination and air circulation.However, strong winds can damage branches, leaves, and even cause fruit drop. Planting trees in rows with some spacing allows for air circulation while providing some shelter from strong winds.',
      factors:
          'Consider factors like: ripening season, fruit size and quality, disease resistance, chilling tolerance (for cooler climates), self-pollination vs. cross-pollination needs.',
      popularchoices: '''
Popular choices: 'Red Indian,' 'Apple Guava,' 'Peruvian Guava' (self-pollinating)
Research: Investigate varieties recommended for your specific region and chilling tolerance if you live in an area with cooler winters.
''',
      timing:
          'Plant guava trees in spring or early summer during warm weather when the danger of frost has passed.',
      spacing:
          'Depending on variety and mature tree size, space guava trees 10-20 feet apart. Dwarf varieties may require less space.',
      digging:
          'Dig a hole large enough to comfortably accommodate the root ball of the tree.',
      planting:
          'Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.',
      watering:
          'Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.',
      pruning:
          'Prune young trees to establish a strong structure and encourage branching. Prune mature trees lightly and annually to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape.',
      fertilization:
          'Guava trees are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive leaf growth at the expense of fruit production.',
      mulching:
          'Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.',
      prevention:
          'Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.',
      monitor:
          'Monitor regularly: Look for signs of common guava diseases like anthracnose, canker diseases, and guava rust.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.',
      ripening:
          'Ripening time: Varies depending on the variety, typically 3-4 months after flowering. Signs of ripeness include a change in fruit color from green to yellow or red (depending on variety), softening of the flesh, and a fragrant aroma.',
      harvesting:
          'Harvesting: Use sharp pruners or hand shears to carefully pick guava fruits from the tree when ripe. Avoid damaging the fruit or stem.',
    ),
    Plant(
      plantId: 5,
      plantName: 'Mango',
      imageURL: 'assets/icons/mango.png',
      step1url: 'assets/icons/mango1.png',
      step2url: 'assets/icons/mango2.png',
      step3url: 'assets/icons/mango3.png',
      step4url: 'assets/icons/mango4.png',
      step5url: 'assets/icons/mango5.png',
      step6url: 'assets/icons/mango6.png',
      locationclimate:
          'Choose a location with consistent warmth (ideally above 70°F) and minimal frost risk.',
      sunlight:
          'Select a sunny location with at least 6-8 hours of direct sunlight daily.',
      soil:
          'Well-drained, sandy loam soil with a slightly acidic pH (5.5-7.0) is ideal. Conduct a soil test for necessary amendments.',
      wind:
          'Till the soil deeply several months before planting to remove weeds and debris. Ensure proper drainage to prevent root rot.',
      factors:
          'Consider factors like: ripening season, fruit size and quality, disease resistance, suitability for your climate.',
      popularchoices:
          ''' Chaunsa ,'' Langra,'' Sindhi, ''Dosehri,'' Anwar Rathore,''Tommy Atkins,' 'Kent,' 'Ataulfo,' 'Honey Mango
Research: Investigate varieties recommended for your specific region.
''',
      timing:
          'Plant mango trees in spring or early summer during the warm season.',
      spacing:
          'Depending on variety, space trees 20-40 feet apart to allow for mature canopy size.',
      digging: 'Dig a hole wider and deeper than the root ball. ',
      planting:
          'Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole, tamping gently to remove air pockets. Water thoroughly.',
      watering:
          'Water deeply and regularly, especially during the first few years and during dry periods. Allow the soil to dry slightly between waterings.',
      pruning:
          'Prune young trees to establish a strong structure and encourage fruit production. Prune mature trees lightly to remove dead, diseased, or overcrowded branches.',
      fertilization:
          'Apply fertilizer according to soil test results and tree age. Mangoes generally benefit from a balanced fertilizer with potassium for fruit quality.',
      mulching:
          'Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, and regulate soil temperature.',
      prevention:
          'Prevention is key: Choose disease-resistant varieties and practice good sanitation by removing fallen leaves and debris around the tree.',
      monitor:
          'Monitor regularly: Look for signs of common mango diseases like anthracnose, powdery mildew, and bacterial black spot.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods.',
      ripening:
          'Ripening time: Varies depending on the variety, typically 3-5 months after flowering. Signs of ripeness include color change, softening of the flesh, and a fragrant aroma.',
      harvesting: '''
Harvesting: Use sharp pruners to carefully pick mangoes from the tree. Avoid damaging the stem or fruit.
Handling: Handle mangoes with care to avoid bruising. Store them at room temperature until ripe, then refrigerate for short-term storage.
''',
    ),
    Plant(
      plantId: 6,
      plantName: 'Peaches',
      imageURL: 'assets/icons/Peaches.png',
      step1url: 'assets/icons/peaches1.png',
      step2url: 'assets/icons/peaches2.png',
      step3url: 'assets/icons/peaches3.png',
      step4url: 'assets/icons/peaches4.png',
      step5url: 'assets/icons/peaches5.png',
      step6url: 'assets/icons/peaches6.png',
      locationclimate:
          'Temperate with mild winters: Peaches thrive in temperate climates with warm summers (70-85°F) and cool winters with sufficient chilling hours (400-800 hours below 45°F). They are sensitive to late spring frosts that can damage flowers and developing fruits.',
      sunlight:
          'Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flower bud development and fruit ripening.',
      soil:
          'Peach trees need well-drained, slightly acidic soil (6.0-6.8 pH) for best growth. Prepare the planting area months in advance, amending heavy clay with compost or sand for drainage. Dig a wide planting hole and loosen surrounding soil to give roots room to thrive.',
      wind:
          'Select a site with good air circulation to help prevent fungal diseases. Dig a planting hole 3 times wider than the root ball of your peach tree and just as deep. Loosen the soil around the planting hole as well to encourage root development.',
      factors:
          'Consider factors like: ripening season (early, mid, or late), chilling hour requirements, disease resistance, fruit size and quality, self-pollination vs. cross-pollination needs.',
      popularchoices: '''
Self-pollinating: 'Reliance,' 'Bonanza,' 'Florida Prince'
Cross-pollinating (need another variety nearby): 'Elberta,' 'Halehaven,' 'Redhaven'
Research: Investigate varieties recommended for your specific region and chilling hour requirements. Consider self-pollinating varieties if you only have space for one tree.
''',
      timing:
          ' Plant bare-root peach trees in late winter/early spring while dormant. Container-grown trees can be planted throughout the growing season, but spring is still preferred.',
      spacing:
          'Depending on variety and mature tree size, space peach trees 15-20 feet apart. Dwarf varieties may require less space.',
      digging:
          'Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.',
      planting:
          'Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.',
      watering:
          'Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.',
      pruning:
          'Prune young trees to establish a strong structure and encourage branching. Prune mature trees annually during dormancy (late winter) to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape. Proper pruning also helps improve air circulation and light penetration within the canopy, which can reduce disease issues.',
      fertilization:
          'Peach trees are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive vegetative growth and reduce fruit production.',
      mulching: '''
Thinning: Once fruits have set, it's crucial to thin them to improve fruit size and quality. Aim for 6-8 inches spacing between peaches on the branch. Thinning can be done by hand-picking or carefully removing excess fruits with pruners.
Supporting: As peach trees mature and bear fruit, the branches can become laden and susceptible to breaking. Provide support structures like stakes or trellises to help distribute the weight of the fruit and maintain branch integrity.
           ''',
      prevention:
          'Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.',
      monitor:
          'Monitor regularly: Look for signs of common peach diseases like bacterial spot, peach leaf curl, and brown rot. Watch for pests like aphids, plum curculio, and oriental fruit moth.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.',
      ripening:
          'Ripening time: Varies depending on the variety, typically 3-4 months after flowering. Signs of ripeness include a change in fruit color from green to yellow or blushed red (depending on variety), softening of the flesh around the stem, and a fragrant aroma.',
      harvesting:
          'Harvesting: Gently twist the peach to detach it from the branch when ripe. Avoid pulling or tugging, which can damage the fruit and the tree.',
    ),
    Plant(
      plantId: 7,
      plantName: 'Pomegranate',
      imageURL: 'assets/icons/fruit-four.png',
      step1url: 'assets/icons/pomegranate1.png',
      step2url: 'assets/icons/Pome3.png',
      step3url: 'assets/icons/pomegranate3.png',
      step4url: 'assets/icons/Pomegranate4.png',
      step5url: 'assets/icons/pomegranate5.png',
      step6url: 'assets/icons/pomegranate6.png',
      locationclimate:
          'Warm and sunny: Pomegranates thrive in warm, dry climates with long, hot summers. Ideal temperatures are consistently above 70°F (21°C) with minimal frost. They are sensitive to prolonged cold and freezing temperatures.',
      sunlight:
          'Select a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flower and fruit development.',
      soil:
          'Pomegranates are sensitive to waterlogged soil. Choose a location with well-drained soil, especially in areas with high rainfall. Raised beds can be beneficial in areas with poor drainage.',
      wind:
          'Good air circulation helps prevent disease while moderate wind aids pollination. However, strong winds can damage fruits and branches. Planting trees with some spacing and using windbreaks around the farm can create a favorable environment.',
      factors:
          'Consider factors like: ripening season, fruit size and quality, disease resistance, chilling requirements (for some varieties), thorniness (thorned vs. thornless).',
      popularchoices: '''
'Wonderful': Large, juicy arils, self-pollinating
'Parfianka': Sweet flavor, thornless variety
'Granada': Early-ripening, good for cooler climates
Research: Investigate varieties recommended for your specific region and chilling requirements if you experience cooler winters. Consider thornless varieties for easier maintenance.
''',
      timing:
          'Plant pomegranate trees in spring or early summer during warm weather when the danger of frost has passed.',
      spacing:
          'Depending on variety and mature tree size, space pomegranate trees 15-20 feet apart.',
      digging:
          ' Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.',
      planting:
          'Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.',
      watering:
          'Pomegranates are drought-tolerant once established, but require regular watering during the first few years and during dry periods. Allow the soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.',
      pruning:
          'Prune young trees to establish a strong structure and encourage branching. Prune mature trees lightly and annually to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape. Pomegranate trees respond well to pruning and can be trained into various shapes.',
      fertilization:
          'Pomegranates are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive foliage growth at the expense of fruit production.',
      mulching:
          'Apply a layer of organic mulch around the base of the tree to retain moisture, suppress weeds, regulate soil temperature, and nourish the plant as it decomposes.',
      prevention:
          'Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.',
      monitor:
          'Monitor regularly: Look for signs of common pomegranate diseases like fungal diseases (anthracnose, botrytis rot) and bacterial blight. Watch for pests like aphids, mealybugs, and scale insects.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.',
      ripening:
          'Ripening time: Varies depending on the variety, typically 4-7 months after flowering. Signs of ripeness include a change in fruit color from green to red or yellow-red (depending on variety), softening of the skin, and a metallic sound when tapped.',
      harvesting:
          'Harvesting: Use sharp pruners or hand shears to carefully cut the pomegranates from the tree when ripe. Avoid damaging the fruit.',
    ),
    Plant(
      plantId: 8,
      plantName: 'Melon',
      imageURL: 'assets/icons/fruit-nine2.png',
      step1url: 'assets/icons/melon1.png',
      step2url: 'assets/icons/melon2.png',
      step3url: 'assets/icons/melon3.png',
      step4url: 'assets/icons/melon4.png',
      step5url: 'assets/icons/melon5.png',
      step6url: 'assets/icons/melon6.png',
      locationclimate:
          'Warm and sunny: Watermelons thrive in warm climates with long, hot summers. Ideal temperatures are consistently above 70°F (21°C). They are sensitive to frost and cool weather.',
      sunlight:
          'Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal fruit growth and sweetness development.',
      soil:
          'Well-drained, fertile soil with a sandy loam texture is ideal. Watermelons have moderate water needs, but good drainage is essential to prevent root rot. A slightly acidic pH (6.0-6.8) is preferred. Conduct a soil test to determine any necessary amendments.',
      wind:
          'Watermelon vines love good air circulation for healthy fruits and disease prevention. Gentle breezes are helpful, but strong winds can damage vines and fruits. Space plants for air circulation and use windbreaks if needed in your watermelon farm.',
      factors:
          'Consider factors like: ripening season (early, mid, or late), chilling hour requirements, disease resistance, fruit size and quality, self-pollination vs. cross-pollination needs.',
      popularchoices: '''
Self-pollinating: 'Harcot,' 'Goldcot,' 'Tilton'
Cross-pollinating (need another variety nearby): 'Moorpark,' 'Royal,' 'Canino'
Research: Investigate varieties recommended for your specific region and chilling hour requirements. Consider self-pollinating varieties if you only have space for one tree.
''',
      timing:
          '''Plant watermelon seeds outdoors directly in the garden after the danger of frost has passed and soil temperatures are consistently warm (at least 70°F).
In cooler climates, you can start seeds indoors 3-4 weeks before transplanting outdoors, but be mindful of root disturbance during transplanting.''',
      spacing:
          '''Watermelons are vining plants that require ample space for growth.
Space watermelon hills 3-4 feet apart, with 3-4 seeds planted per hill.
After germination, thin the seedlings to the single strongest plant per hill.''',
      digging:
          'Choose a sunny location with well-drained soil. Sandy loam soil is ideal.',
      planting: '''

Make sure the planting area is free of weeds and debris.
Water the planting area thoroughly after sowing the seeds.
''',
      watering:
          'Watermelons have moderate water needs. Water deeply and regularly, especially during hot and dry periods. Avoid overhead watering, which can promote fungal diseases. Aim to moisten the soil but not saturate it.',
      pruning:
          'Vining and Support (optional): Watermelon vines can sprawl across the ground. While not strictly necessary, providing some support structures like trellises or tomato cages can help keep the fruits off the ground, improve air circulation, and potentially reduce pest and disease issues.',
      fertilization:
          'Watermelons benefit from bee pollination. You can attract pollinators by planting flowering companion plants near your watermelons. If hand pollination is needed, carefully transfer pollen from male flowers (smaller, yellow flowers) to female flowers (larger flowers with a small fruit developing at the base).',
      mulching:
          'Weeding and Mulching: Regularly weed around watermelon plants to control competition for water and nutrients. Apply a layer of organic mulch around the base of the plants to retain moisture, suppress weeds, and regulate soil temperature.',
      prevention:
          'Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the plants. Rotate crops in your garden bed to minimize disease buildup in the soil.',
      monitor:
          'Monitor regularly: Look for signs of common watermelon diseases like powdery mildew, anthracnose, and bacterial wilt. Watch for pests like aphids, cucumber beetles, and squash bugs.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.',
      ripening:
          'Ripening time: Varies depending on the variety, typically 70-90 days after planting. Signs of ripeness include a dull thud when thumped, a yellowing of the underside where the melon rests on the soil, and a tendril near the stem turning brown and dry.',
      harvesting:
          'Use a sharp knife to carefully cut the watermelon from the vine, leaving a short stem attached.',
    ),
    Plant(
      plantId: 9,
      plantName: 'Appricot',
      imageURL: 'assets/icons/appricots.png',
      step1url: 'assets/icons/appricot1.png',
      step2url: 'assets/icons/appricotstep4.png',
      step3url: 'assets/icons/appricot3.png',
      step4url: 'assets/icons/appricotstep44.png',
      step5url: 'assets/icons/appricotstep5.png',
      step6url: 'assets/icons/appricotstep6.png',
      locationclimate:
          'Temperate with mild winters: Apricots thrive in cool to temperate climates with warm summers (70-85°F) and winters with sufficient chilling hours (400-800 hours below 45°F). They are sensitive to late spring frosts that can damage flowers and developing fruits.',
      sunlight:
          'Choose a location with full sun, receiving at least 6-8 hours of direct sunlight daily. This is crucial for optimal flower bud development and fruit ripening.',
      soil:
          'Apricots, like peaches, prefer well-drained soil. Amend clay soil with compost or sand for good drainage. Aim for slightly acidic soil (pH 6.5-ish). Prepare the planting area well in advance for optimal growth.',
      wind:
          'Select a site with good air circulation to help prevent fungal diseases. Avoid planting in low-lying areas prone to frost pockets.',
      factors:
          'Consider factors like: ripening season (early, mid, or late), chilling hour requirements, disease resistance, fruit size and quality, self-pollination vs. cross-pollination needs.',
      popularchoices: '''
Self-pollinating: 'Harcot,' 'Goldcot,' 'Tilton'
Cross-pollinating (need another variety nearby): 'Moorpark,' 'Royal,' 'Canino'
Research: Investigate varieties recommended for your specific region and chilling hour requirements. Consider self-pollinating varieties if you only have space for one tree.
''',
      timing:
          'Plant bare-root apricot trees in late winter/early spring while dormant. Container-grown trees can be planted throughout the growing season, but spring is still preferred.',
      spacing:
          'Depending on variety and mature tree size, space apricot trees 15-20 feet apart. Dwarf varieties may require less space.',
      digging:
          'Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.',
      planting:
          'Carefully position the tree, ensuring the graft union (swollen area on the trunk) is a few inches above the soil surface. Backfill the hole and water thoroughly.',
      watering:
          'Water deeply and regularly, especially during the first few years and during dry periods. Allow the top few inches of soil to dry slightly between waterings. Avoid overwatering, which can lead to root rot.',
      pruning:
          ' Prune young trees to establish a strong structure and encourage branching. Prune mature trees annually during dormancy (late winter) to remove dead, diseased, or overcrowded branches, and to maintain desired size and shape. Proper pruning also helps improve air circulation and light penetration within the canopy, which can reduce disease issues.',
      fertilization:
          ' Apricot trees are moderate feeders. Apply a balanced fertilizer formulated for fruit trees according to soil test results and tree age. Avoid overfertilization, which can encourage excessive vegetative growth and reduce fruit production.',
      mulching: '''
Thinning: Once fruits have set, it's crucial to thin them to improve fruit size and quality. Aim for 4-6 inches spacing between apricots on the branch. Thinning can be done by hand-picking or carefully removing excess fruits with pruners.
Supporting: As apricot trees mature and bear fruit, the branches can become laden and susceptible to breaking. Provide support structures like stakes or trellises to help distribute the weight of the fruit and maintain branch integrity.
''',
      prevention:
          'Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.',
      monitor:
          'Monitor regularly: Look for signs of common apricot diseases like bacterial spot, brown rot, and canker diseases. Watch for pests like aphids, plum curculio, and Japanese beetles.',
      treatment:
          'Treatment options: Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.',
      ripening:
          'Ripening time: Varies depending on the variety, typically 2-3 months after flowering. Signs of ripeness include a change in fruit color from green to orange or yellow (depending on variety), softening of the flesh, and a fragrant aroma.',
      harvesting:
          ' Gently pull or twist the apricot from the branch when ripe. Avoid pulling or tugging, which can damage the fruit and the tree.',
    ),
//     Plant(
//       plantId: 10,
//       plantName: 'Dates',
//       imageURL: 'assets/icons/datespic1.png',
//       step1url: 'assets/icons/datesstep1.png',
//       locationclimate:
//           'Hot and arid: Date palms thrive in hot, dry climates with long summers (above 85°F) and mild winters with minimal frost. They are sensitive to freezing temperatures and cannot tolerate extended periods of cold.',
//       sunlight:
//           'Select a location with full sun, receiving at least 8-10 hours of direct sunlight daily. This is crucial for optimal flower and fruit development.',
//       soil:
//           'Well-drained, sandy loam soil with good aeration is ideal. Dates are tolerant of slightly alkaline soils (pH 7.0-8.0).',
//       wind:
//           'Date palms benefit from good air circulation. It helps prevent fungal diseases that might thrive in stagnant air. While date palms can handle some wind, excessively strong winds can damage fronds (leaves) and fruit.  Spacing trees for airflow and using windbreaks if needed can create a good environment for your date farm.',
//       factors:
//           '''Consider factors like: ripening season (if applicable in your region), fruit size and quality, whether the variety is male or female (dates require both for fruit production), cold tolerance (for borderline climates).
// 'Important note: Most date palm varieties require both a male and female tree for fruit production. Male trees do not produce dates, but they pollinate the female trees. If space is limited, some self-pollinating varieties are available but may have lower fruit yields.''',
//       popularchoices: '''
// Popular choices:
// Female (fruit-bearing): 'Medjool,' 'Deglet Noor,' 'Barhi'
// Male (pollinators): 'Khalas,' 'Hayani'
// Research: Investigate varieties recommended for your specific region and climate. Consult with local nurseries or agricultural extension offices for guidance on suitable varieties and potential challenges in your area.
// ''',
//       timing:
//           ' Plant date palms in spring or early summer during warm weather when the danger of frost has passed.',
//       spacing:
//           'Depending on variety and mature tree size, space date palms 20-30 feet apart. Consider the mature height and spread of both male and female trees when planning your planting layout.',
//       digging:
//           'Dig a hole large enough to comfortably accommodate the root ball of the tree, two to three times wider than the root ball itself.',
//       planting:
//           'Carefully position the tree, ensuring the base of the trunk is slightly above the soil surface. Backfill the hole and water thoroughly.',
//       watering:
//           'Date palms are surprisingly drought-tolerant once established but require regular watering during the first few years and during dry periods. Allow the soil to dry slightly between waterings. Deep watering is crucial to encourage root development.',
//       pruning:
//           ' Minimal pruning is typically required for date palms. However, you can remove dead, diseased, or damaged fronds throughout the year. Avoid excessive pruning, as it can reduce fruit production.',
//       fertilization:
//           'Date palms have moderate to high fertilizer needs, especially in nutrient-poor soils. Apply a balanced fertilizer formulated for palm trees according to soil test results and tree age. Avoid overfertilization, which can lead to excessive foliage growth at the expense of fruit production.',
//       mulching:
//           'Date palms may produce suckers (shoots) at the base of the trunk. These can be removed if not desired for additional trees.',
//       prevention:
//           'Prevention is key: Choose disease-resistant varieties and maintain good sanitation by removing fallen leaves and debris around the tree base.',
//       monitor:
//           'Monitor regularly: Look for signs of common apricot diseases like bacterial spot, brown rot, and canker diseases. Watch for pests like aphids, plum curculio, and Japanese beetles.',
//       treatment:
//           'Organic and conventional methods are available. Consult a local agricultural extension office or qualified professional for recommendations on specific products and application methods for your region and specific pest or disease.',
//       ripening:
//           'Ripening time: Varies depending on the variety, typically 4-7 years after planting for the first fruit set, and then annually thereafter. Signs of ripeness include a change in fruit color from green to yellow, brown, or red (depending on variety), softening of the flesh, and a sticky, sugary coating developing on the fruit.',
//       harvesting:
//           'Harvesting: Use sharp pruners or a long-handled harvesting tool to carefully cut date bunches from the tree when ripe. Be aware that date bunches can be very heavy.',
//     )
  ];
}
