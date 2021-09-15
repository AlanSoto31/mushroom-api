# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Mushroom.create(
#    name: '',
#    img_url: '', 
#    description: '', 
#    scientific_name: '', 
#    wiki_url: '',
#    edibility: '',
#    dimensions: '',
#    location: '',
#)

# Admin

User.create(
    name: "admin",
    email: 'admin@admin.com',
    password: 'admin',
)

puts "Created #{User.count} users (admin)"

# Edible Mushrooms

Mushroom.create(
    name: 'Horse',
    img_url: 'https://www.first-nature.com/fungi/images/agaricaceae/agaricus-arvensis1.jpg',
    description: 'Agaricus arvensis appears in manured meadows and beside bridle paths and other places where there is plenty of decaying organic matter, upon which it feeds saprophytically. The Horse Mushroom is one of the largest and most distinctive fungi in its genus, often forms fairy rings many metres in diameter in permanent pastures.',
    season: 'August to November, typically a week or two later than the Field Mushroom, Agaricus campestris, with which the Horse Mushroom is sometimes confused.',
    scientific_name: 'Agaricus arvensis',
    wiki_url: 'https://en.wikipedia.org/wiki/Agaricus_arvensis',
    edibility: 'Edible and good',
    dimensions: 'Cap 8-20 cm diameter, stem 8-10 cm tall * 2-3 cm diameter',
    location: 'North America, Europe'
)

Mushroom.create(
    name: "King Bolete or Porcini",
    img_url: 'https://www.first-nature.com/fungi/images/boletaceae/boletus-edulis8.jpg', 
    description: 'Boletus edulis grows on soil beneath trees, notably beech and birch, and less commonly oaks as well as pines, spruces and occasionally other conifers. In southern Europe this species is found in scrubland domonated by Cistus ladanifer and other rock rose species.',
    season: 'June to October in Britain and Ireland.', 
    scientific_name: 'Boletus edulis', 
    wiki_url: 'https://en.wikipedia.org/wiki/Boletus_edulis',
    edibility: 'Edible and excellent',
    dimensions: 'Cap 8–20(30) cm; stem 6-8 cm tall * 2-4 cm diameter',
    location: 'North America, Europe and Asia to some degree',
)

Mushroom.create(
    name: 'Chantarelle',
    img_url: 'https://www.first-nature.com/fungi/images/cantharellales/cantharellus-cibarius1.jpg', 
    description: 'This ectomycorrhizal species is most frequently found in deciduous forests with oak, chestnut or hazel, but Common Chanterelles also occur under conifers and occasionally on roadside verges beneath deciduous hedgerows. Chanterelles show a preference for acid soils.',
    season: 'June to October - even into November in mild autumns - in Britain and Ireland; often from October right through to the following March in southern Europe.', 
    scientific_name: 'Cantharellus cibarius', 
    wiki_url: 'https://en.wikipedia.org/wiki/Cantharellus_cibarius',
    edibility: 'Edible and excellent',
    dimensions: 'Cap 3-10 cm across, stem 2-10 cm tall * 0.4-1.5 cm thick',
    location: 'North America, Europe, Bhutan and China',
)

Mushroom.create(
    name: 'Oyster',
    img_url: 'https://www.first-nature.com/fungi/images/pleurotaceae/pleurotus-ostreatus1.jpg', 
    description: 'Oyster Mushrooms are sometimes weakly parasitic but more often saprobic and found on dying or dead standing deciduous broadleaf trees, particularly Beech and oaks and sometimes on fallen trunks and large branches.',	
    season: 'Summer, autumn and early winter in Britain and Ireland; Oyster Mushrooms have a longer season in parts of southern Europe, where these edible fungi can sometimes be found through to January or February.', 
    scientific_name: 'Pleurotus ostreatus', 
    wiki_url: 'https://en.wikipedia.org/wiki/Pleurotus_ostreatus',
    edibility: 'Edible and good',
    dimensions: 'Cap 5-14 cm diameter, stem 2-3 cm tall * 1-1.5 cm thick',
    location: 'Europe, North America and Asia',
)

Mushroom.create(
    name: 'Hedgehog',
    img_url: 'https://www.first-nature.com/fungi/images/hydnaceae/hydnum-repandum1.jpg', 
    description: 'Ectomycorrhizal; forming rings among the moss and leaf litter of forest floors.',
    season: 'August to December in Britain and Ireland.', 
    scientific_name: 'Hydnum repandum', 
    wiki_url: 'https://en.wikipedia.org/wiki/Hydnum_repandum',
    edibility: 'Edible and excellent',
    dimensions: 'Cap 3-10 cm diameter; stem 2-6 cm tall * 1.5-3 cm diameter',
    location: 'North America, Europe',
)

Mushroom.create(
    name: 'Morel',
    img_url: 'https://www.first-nature.com/fungi/images/ascomycetes/morchella-esculenta3.jpg', 
    description: 'On chalky soil under deciduous trees; occasionally with dwarf willow on calcareous dune slacks. It seems likely that at different phases in their development the underground mycelia of Morels may be able to behave either symbiotically with trees (in an ectomycorrhizal relationship) or as saprotrophs.',
    season: 'March to early June in Britain and Ireland.', 
    scientific_name: 'Morchella elata', 
    wiki_url: 'https://en.wikipedia.org/wiki/Morchella_elata',
    edibility: 'Edible',
    dimensions: '2-4 cm diameter * 5-15 cm tall',
    location: 'North America, Europe',
)

Mushroom.create(
    name: 'Giant puffball',
    img_url: 'https://grocycle.com/wp-content/uploads/2020/03/How-To-Forage-For-Puffball-Mushrooms-1024x512.jpg', 
    description: 'Saprobic, often found on roadside verges, at the edges of fields and among briars, nettles and other rank vegetation in nutrient-rich waste ground and on woodland edges; occasionally the Giant Puffball is found in open woodland or in woodland clearings. Usually Calvatia gigantea occurs in small groups, but Giant Puffballs have been known to form fairy rings.',
    season: 'July to November in Britain and Ireland.', 
    scientific_name: 'Calvatia gigantea', 
    wiki_url: 'https://en.wikipedia.org/wiki/Calvatia_gigantea',
    edibility: 'Edible',
    dimensions: '7-80 cm diameter * 7-80 cm tall',
    location: 'North America, Asia and Europe',
)

Mushroom.create(
    name: "Lion's mane",
    img_url: 'https://www.first-nature.com/fungi/images/hericiaceae/hericium-erinaceus7.jpg', 
    description: 'Saprobic, nearly always on beech and oak trees, stumps and fallen logs in Britain, but sometimes on other hardwoods. Bearded Tooth fungus is also reported to fruit occasionally on piles of sawdust.',	
    season: 'July to November in Britain and Ireland.', 
    scientific_name: 'Hericium erinaceus', 
    wiki_url: 'https://en.wikipedia.org/wiki/Hericium_erinaceus',
    edibility: 'Edible',
    dimensions: 'Body 8–16 cm across, spines 1-5 cm long',
    location: 'North America, Europe and Asia',
)

Mushroom.create(
    name: 'Chicken of the Woods',
    img_url: 'https://www.mushroom.world/data/fungi/Laetiporussulphureus1-thumb.jpg', 
    description: 'Chicken-of-the-Woods is saprobic, feeding on dead or dying hardwood timber, mainly oak, sweet chestnut, beech and occasionally cherry and willow. Surprisingly, this conspicuous bracket fungus also occurs on yew trees, which are of course conifers.',
    season: 'Summer and autumn in Britain and Ireland.', 
    scientific_name: 'Laetiporus sulphureus', 
    wiki_url: 'https://en.wikipedia.org/wiki/Laetiporus_sulphureus',
    edibility: 'Edible',
    dimensions: 'Cap 5 to 60 cm in diameter and 4 cm thick',
    location: 'Europe and North America',
)

Mushroom.create(
    name: 'Crab Russula',
    img_url: 'https://www.first-nature.com/fungi/images/russulaceae/russula-xerampelina5.jpg', 
    description: 'The Crab Brittlegill occurs in pine and mixed coniferous forests, but this species (or perhaps more likely other brittlegills in the Russula xerampelina complex) is also reported occasionally from broadleaf woodland. In common with other members of the Russulaceae, Russula xerampelina is an ectomycorrhizal mushroom.',
    season: 'August to October in Britain and Ireland.', 
    scientific_name: 'Russula xerampelina', 
    wiki_url: 'https://en.wikipedia.org/wiki/Russula_xerampelina',
    edibility: 'Edible',
    dimensions: 'Cap 5-14 cm diameter; stem 3-11 cm tall * 1-3 cm diameter',
    location: 'North America, Europe',
)

#Magic Mushrooms

Mushroom.create(
    name: 'Liberty Cap',
    img_url: 'https://www.first-nature.com/fungi/images/strophariaceae/psilocybe-semilanceata7.jpg', 
    description: 'This poisonous saprobic grassland mushroom is most often found on upland pastures, notably on hill slopes. Although sometimes seen on lawns and in lowland meadows it does not grow on dung.',
    season: 'These so-called Magic Mushrooms can be found in Britain and Ireland throughout summer and autumn.', 
    scientific_name: 'Psilocybe semilanceata', 
    wiki_url: 'https://en.wikipedia.org/wiki/Psilocybe_semilanceata',
    edibility: 'Inedible',
    dimensions: 'Cap 0.5-1.5 cm diameter, stem 2.5-7 cm tall * 0.1-0.2 cm thick',
    location: 'North America, Europe',
)

#Poisonous Mushrooms

Mushroom.create(
    name: 'Fly Amanita',
    img_url: 'https://www.mushroom.world/data/fungi/Amanitamuscaria7-thumb.jpg', 
    description: 'In common with most Amanita species, and with all common amanitas that occur in Britain, Amanita muscaria is ectomycorrhizal. The Fly Agaric forms mycorrhizal associations with a range of hardwood and softwood trees, notably birches, pines and spruces. The remarkable picture on the left shows a Fly Agaric growing on seashore gravel - presumably mycorrhizal with the Sea Buckthorn shrub in the background. This picture was taken near Walmer in Kent, UK.',
    season: 'August to November in Britain and Ireland.', 
    scientific_name: 'Amanita muscaria', 
    wiki_url: 'https://en.wikipedia.org/wiki/Amanita_muscaria',
    edibility: 'Poisonous',
    dimensions: 'Cap 8-10 cm diameter; stem 8-18 cm tall * 1-2 cm diameter',
    location: 'Poisonous',
)

Mushroom.create(
    name: 'Death Cap Amanita',
    img_url: 'https://www.mushroom.world/data/fungi/Amanitaphalloides3.jpg', 
    description: 'Mycorhizal with hardwood trees, especially oaks, and occasionally with softwoods.',
    season: 'July to November in Britain and Ireland.', 
    scientific_name: 'Amanita phalloides', 
    wiki_url: 'https://en.wikipedia.org/wiki/Amanita_phalloides',
    edibility: 'Lethally poisonous',
    dimensions: 'Cap 6-12 cm diameter, stem 7-12 cm tall * 1 - 1.5 cm thick',
    location: 'North America, Europe',
)

Mushroom.create(
    name: 'Caged stinkhorn',
    img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Clathrus_ruber_spacepleb.jpg/234px-Clathrus_ruber_spacepleb.jpg', 
    description: 'Saprobic, mainly found in parks and gardens, Clathrus ruber often fruits in small groups on or beside decomposing vegetable matter and in particular compost heaps. Increasingly this species is being found growing on bark mulch in parks and gardens.',
    season: 'June to September in southern Britain, but all year round in the south of France and from October to May in the most southerly parts of Europe.', 
    scientific_name: 'Clathrus ruber', 
    wiki_url: 'https://en.wikipedia.org/wiki/Clathrus_ruber',
    edibility: 'Poisonous',
    dimensions: 'Fruiting body 4-10 cm tall * variable diameter',
    location: 'North America and Europe',
)

Mushroom.create(
    name: 'Deadly Webcap',
    img_url: 'https://www.first-nature.com/fungi/images/cortinariales/cortinarius-rubellus5.jpg', 
    description: 'Mycorrhizal with conifer trees - pine and spruce in particular - on damp acid soil; often fruiting in small groups.',
    season: 'August to November in Britain.', 
    scientific_name: 'Cortinarius rubellus', 
    wiki_url: 'https://en.wikipedia.org/wiki/Cortinarius_rubellus',
    edibility: 'Lethally poisonous',
    dimensions: 'Cap 3-8 cm diameter, stem 5-11 cm tall * 0.8-1.5 cm diameter',
    location: 'Europe and parts of Asia',
)

Mushroom.create(
    name: 'Poison Dye Cort',
    img_url: 'https://www.first-nature.com/fungi/images/cortinariales/cortinarius-semisanguineus8.jpg', 
    description: 'Ectomycorrhizal, in coniferous woodland; sometimes also under birches; singly or in scattered groups, very often in moss.',
    season: 'August to October in Britain and Ireland.', 
    scientific_name: 'Cortinarius semisanguineus', 
    wiki_url: 'https://en.wikipedia.org/wiki/Cortinarius_semisanguineus',
    edibility: 'Poisonous',
    dimensions: 'Cap 2-6 cm diameter, stem 2-10 cm tall * 0.4-1 cm thick',
    location: 'North America, Europe',
)

Mushroom.create(
    name: 'Flowerpot parasol',
    img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Leucocoprinus.JPG/220px-Leucocoprinus.JPG', 
    description: 'Saprobic, occurring singly or in small groups on potting compost and other rich soils in warm moist places.',
    season: 'June to October in unheated greenhouses in Britain, but in heated greenhouses these fungi could perhaps appear at any time of the year.', 
    scientific_name: 'Leucocoprinus birnbaumii ', 
    wiki_url: 'https://en.wikipedia.org/wiki/Leucocoprinus_birnbaumii',
    edibility: 'Poisonous',
    dimensions: 'Cap 2–6 cm diameter, stem 4-12 cm tall * 0.3-0.6 cm diameter',
    location: 'Europe, North America and Australia',
)

Mushroom.create(
    name: 'Poison Radish Ground Mycena',
    img_url: 'https://www.first-nature.com/fungi/images/mycenaceae/mycena-pura7.jpg', 
    description: 'Saprobic in broadleaf and coniferous woodland; less commonly in open grassland.',
    season: 'June to October in Britain and Ireland.', 
    scientific_name: 'Mycena pura', 
    wiki_url: 'https://en.wikipedia.org/wiki/Mycena_pura',
    edibility: 'Poisonous',
    dimensions: 'Cap 2-6 cm diameter, stem 3-9 cm tall * 0.3-1 cm thick',
    location: 'North America, Europe',
)

Mushroom.create(
    name: "Satan's Bolete",
    img_url: 'https://www.first-nature.com/fungi/images/boletaceae/rubroboletus-satanas2.jpg', 
    description: 'Do not taste any part of this species: it is poisonous. Young specimens have a mild odour but old ones smell rather unpleasant. It is found on chalky soil beneath beech and oak trees.',
    season: 'Late summer and autumn.', 
    scientific_name: 'Rubroboletus satanas', 
    wiki_url: 'https://en.wikipedia.org/wiki/Rubroboletus_satanas',
    edibility: 'Lethally poisonous',
    dimensions: 'Cap 8-25 cm diameter, stem 6-9 cm tall * 5-10 cm diameter',
    location: 'North America, Europe',
)

Mushroom.create(
    name: 'The Sickener',
    img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Russula_emetica_in_Poland.jpg/220px-Russula_emetica_in_Poland.jpg', 
    description: 'Russula emetica, The Sickener, is found mainly beneath conifers (pines and spruces in particular) and occasionally also on mossy (fairly wet) heathland. In common with other members of the Russulaceae, Russula emetica is an ectomycorrhizal mushroom.',
    season: 'August to October in Britain and Ireland.', 
    scientific_name: 'Russula emetica', 
    wiki_url: 'https://en.wikipedia.org/wiki/Russula_emetica',
    edibility: 'Poisonous',
    dimensions: 'Cap 3-10 cm diameter, stem 4-9 cm tall * 0.7-2 cm thick',
    location: 'North America, Europe',
)

puts "Created #{Mushroom.count} mushrooms"