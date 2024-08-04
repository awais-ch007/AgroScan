class Plant {
  final int diseaseID;
  String diseaseName;
  String organiccontrol;
  String chemicalControl;

  Plant({
    required this.diseaseID,
    this.diseaseName = '',
    this.organiccontrol = '',
    this.chemicalControl = '',
  });

  //List of Plants data
  static List<Plant> plantList = [
    Plant(diseaseID: 0, diseaseName: 'Black Rot_grape', organiccontrol: '''
Sanitation: Remove and destroy mummified fruit and infected canes from the vineyard.
Pruning: Prune vines to improve air circulation and reduce humidity.
Canopy Management: Train vines to an open system to increase sunlight penetration and promote rapid drying of leaves and fruit clusters.
Sulfur: Apply elemental sulfur as a preventative spray during the growing season, especially during warm, humid weather.
Potassium Bicarbonate: Use potassium bicarbonate-based fungicides to control black rot and other grape diseases.
''', chemicalControl: '''
Mancozeb: Apply mancozeb (e.g., Dithane, Manzate) at 7-14 day intervals starting at bud break until 4 weeks after bloom.
Copper Products: Use copper-based fungicides (e.g., copper hydroxide, copper sulfate) as protectants. Apply at 10-14 day intervals from pre-bloom to 4 weeks after bloom.
Captan: Apply captan fungicide at 7-14 day intervals from bloom to harvest.
Fenhexamid: Use fenhexamid (e.g., Elevate) at 7-14 day intervals from pre-bloom to harvest.
Pyraclostrobin + Metiram: Apply fungicides containing pyraclostrobin and metiram (e.g., Pristine, Cabrio) at 7-14 day intervals starting at bloom.
'''),
    Plant(
      diseaseID: 1,
      diseaseName: 'ESCA_grape',
      organiccontrol: '''
Soak dormant cuttings for 30 mins in hot water at about 50°C.
Combine with other methods due to variable effectiveness.
Use Trichoderma species to prevent infection of pruning wounds, basal ends of propagation material, and graft unions.
Treat within 24 hours of pruning and again 2 weeks after.
''',
      chemicalControl: '''
Consider integrated approach with preventive measures and biological treatments.
Traditional wound protectants may not penetrate deep enough in dormant grapevine cuttings to affect fungi.
Focus on preventive practices as most effective for trunk diseases.
Dip vines into specialized waxes with plant growth regulators or fungicide-impregnated formulations.
Before grafting to encourage graft union callus development and inhibit fungal contamination.
''',
    ),
    Plant(
      diseaseID: 2,
      diseaseName: 'Leaf Blight_grape',
      organiccontrol: '''
Sanitation: Remove and destroy infected leaves and debris from the vineyard.
Pruning: Prune vines to improve air circulation and reduce humidity.
Copper Products: Apply copper-based fungicides (e.g., copper hydroxide, copper sulfate) as protectants during the growing season.
Sulfur: Use elemental sulfur as a preventative spray during periods of warm, humid weather.
Potassium Bicarbonate: Apply potassium bicarbonate-based fungicides to control leaf blight.
Biological Control: Use biological control agents, such as Bacillus subtilis or Trichoderma spp., to suppress leaf blight.
''',
      chemicalControl: '''
Mancozeb: Apply mancozeb (e.g., Dithane, Manzate) at 7-14 day intervals starting at bud break until 4 weeks after bloom.
Copper Products: Use copper-based fungicides (e.g., copper hydroxide, copper sulfate) as protectants. Apply at 10-14 day intervals from pre-bloom to 4 weeks after bloom.
Captan: Apply captan fungicide at 7-14 day intervals from bloom to harvest.
Fenhexamid: Use fenhexamid (e.g., Elevate) at 7-14 day intervals from pre-bloom to harvest.
Pyraclostrobin + Metiram: Apply fungicides containing pyraclostrobin and metiram (e.g., Pristine, Cabrio) at 7-14 day intervals starting at bloom.
''',
    ),
    Plant(
      diseaseID: 3,
      diseaseName: 'Citrus_Canker_Diseases_Leaf_Orange',
      organiccontrol: '''
Sanitation: Remove and destroy any infected leaves, twigs, or fruit.
Pruning: Prune trees to improve air circulation and reduce humidity around the leaves.
Copper Products: Apply copper-based fungicides or bactericides (e.g., copper hydroxide, copper sulfate) as protectants during wet seasons.
Citrus Oil Extracts: Use citrus oil extracts (e.g., Orange Guard, Citrusolve) as a contact fungicide.
Bacterial Antagonists: Use beneficial bacteria such as Pseudomonas fluorescens strain A506 or Pseudomonas syringae strain ESC-10 as sprays to compete with the canker-causing bacteria.
''',
      chemicalControl: '''
Consider an integrated approach with preventive measures and biological treatments.
No effective control once citrus canker is detected.
Focus on preventive measures:
Clearing and destruction of fallen tree material is essential.
Minimize the effect of the disease through proactive actions.
Control citrus psyllids to limit disease damage.
Copper-based fungicides or bactericides can provide a barrier against infection.
However, they will not treat an existing infection.
''',
    ),
    Plant(
      diseaseID: 4,
      diseaseName: 'Citrus_Nutrient_Deficiency_Yellow_Leaf_Orange',
      organiccontrol: '''
Increase soil organic matter levels for improved soil structure and water/nutrient retention.
Add organic matter to soils through:
Manure
Compost
Peat
Nettle slag
Guano
Horn meal
Nitrolime
Nettle slag can be sprayed directly on the leaves for added benefits.
''',
      chemicalControl: '''
Use fertilizers containing nitrogen (N). - Examples: Urea, NPK, ammonium nitrate. - Consult your agricultural advisor to know the best product and dosage for your soil and crop.
Further recommendations:
It is recommended to do a soil test before the start of the cropping season to
optimize your crop production.
Best to apply nitrogen in multiple splits throughout the season.
-Do not apply if you are close to harvesting time.
''',
    ),
    Plant(
      diseaseID: 5,
      diseaseName: 'black_rot_apple',
      organiccontrol: '''
Apply Bordeaux mixture or copper sulfate after harvest.
Reduces incidence of anthracnose the following season.
Use these compounds before harvest to control bull's-eye rot on fruits.
''',
      chemicalControl: '''
Adopt an integrated approach with preventive measures and biological treatments.
No fungicides fully effective at eradicating existing cankers.
Apply preventive fungicides before harvest to reduce bull's-eye rot during storage.
Post-harvest applications may reduce cankers the following season.
Recommended products:
Captan-based fungicides
Mancozeb-based fungicides
Ziram-based fungicides
''',
    ),
    Plant(
      diseaseID: 6,
      diseaseName: 'apple_scab',
      organiccontrol: '''
Prune: Keep trees pruned to improve air circulation and reduce humidity around the leaves.
Remove Debris: Remove fallen leaves and other debris from the ground.
Mulch: Apply organic mulch under the tree to prevent rain splash of spores from the soil onto leaves.
Neem Oil: Apply neem oil or sulfur-based fungicides to protect leaves.
Serpentine: Use a serpentine barrier (such as a band of copper) around the trunk to prevent ascospores from reaching the leaves.
''',
      chemicalControl: '''
. Chlorothalonil: Apply chlorothalonil (e.g., Bravo, Echo) at 7-14 day intervals during the primary and secondary scab infection periods.
Mancozeb: Use mancozeb (e.g., Dithane, Manzate) at 7-14 day intervals during primary and secondary scab infection periods.
 Myclobutanil: Apply myclobutanil (e.g., Rally) starting at tight cluster stage and continue at 14-21 day intervals.
''',
    ),
    Plant(
      diseaseID: 7,
      diseaseName: 'cedar_apple_rust',
      organiccontrol: '''
.Prune: Remove galls from infected juniper trees (cedars) in late winter or early spring.
Sanitation: Remove and destroy any infected leaves or galls from the ground.
Planting: Avoid planting susceptible apple or crabapple cultivars near eastern red cedar trees.
Sulfur Spray: Apply sulfur sprays in early spring before the orange spore horns are produced.
''',
      chemicalControl: '''
Captan: Apply captan fungicide (e.g., Captan 80 WDG) at 7-10 day intervals starting at bud break.
Thiophanate-methyl:  Use thiophanate-methyl fungicide (e.g., Cleary's 3336, Bonide Infuse Systemic Disease Control) starting at bud break and continuing at 10-14 day intervals.
Fenbuconazole: Apply fenbuconazole fungicide (e.g., Indar) at pink bud stage and again in 10-14 days.
''',
    ),
    Plant(diseaseID: 8, diseaseName: 'Healthy_Leaf_Orange', organiccontrol: '''

''', chemicalControl: '''

'''),
    Plant(diseaseID: 9, diseaseName: 'Healthy_grape', organiccontrol: '''
Healthy Leaf no treatment needed.
''', chemicalControl: '''
Healthy Leaf no treatment needed.
'''),
    Plant(
        diseaseID: 10,
        diseaseName: 'Young_Healthy_Leaf_Orange',
        organiccontrol: '''
Healthy Leaf no treatment needed.
''',
        chemicalControl: '''
Healthy Leaf no treatment needed.
'''),
    Plant(diseaseID: 11, diseaseName: 'healthy_apple', organiccontrol: '''
Healthy Leaf no treatment needed.
''', chemicalControl: '''
Healthy Leaf no treatment needed.
'''),
    Plant(
        diseaseID: 12,
        diseaseName: 'Multiple_Diseases_Leaf_Orange',
        organiccontrol: '''
Multiple diseases detected.
''',
        chemicalControl: '''
Multiple diseases detected.
'''),
  ];
}
