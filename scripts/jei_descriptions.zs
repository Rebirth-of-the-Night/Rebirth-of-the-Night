#reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

/*
 * Putting this here because aaaaaaa formatting.
 * Also, such a dense file needs to have proper formatting to be legible.
 * 
 * Syntax
 * * The item should not be enclosed in [] unless it is a list.
 * * The description should not be enclosed in [] unless it is meant to be separated by a line break, in which case use an extra "".
 * * Try to keep separate pages of descriptions close to each other in the file...
 * * Try to separate long descriptions onto separate pages where fit.
 * 
 * Spacing
 * * 2 lines between categories
 * * 1 line between groups within the category
 * 
 * Sorting
 * * PLEASE put descriptions in the correct category. As of this viewing, brick and wildberries are under BWM.
 * * Grouped by purpose or aesthetic
 * * Categorized by what you would normally organize your chests with, such as:
 * * - Ores
 * * - Ingots
 * * - Manufacturing
 * * - Plants
 * * - Food
 * * - Decorative blocks
 * * - Tools
 * * - Weapons
 * * - Armor
 * * - Redstone
 * * - etc.
 * 
 * Style
 * * Put categories in /* Category here *\/ (Ignore the \, merely for the comment)
 * * Follow Spacing guidelines
 * * PLEASE don't comment every single damn item...
 * * ...Unless the item's id is undescriptive (like <betterwithmods:material:39>)
 * * * In case of said undescriptiveness, make a val that has a more descriptive name
 * * * An example is under the pyrotech section (soon to be revamped)
 * * Try not to put lines between items... it increases the line count waaayyy too much
 * * Also try not to put lines between comments and the item
 * 
 * And that is my page long style guide...
 * Please follow it. - democat, the god
 */




/* Display to JEI */
JEI.addItem(<biomesoplenty:farmland_0:1>);
JEI.addItem(<biomesoplenty:grass_path:1>);
JEI.addItem(<biomesoplenty:grass_path:2>);
#JEI.addItem(<netherex:blue_fire>);
#JEI.addItem(<endreborn:end_fire>);
#JEI.addItem(<betterwithmods:stoked_flame>);

/* Tools, Weapons, and Armor */
val handle = <spartanweaponry:material>;
val pole = <spartanweaponry:material:1>;

JEI.addDescription(handle,"Provides a good grip for more advanced weapons.");
JEI.addDescription(pole,"A long stick that provides good grip.");

JEI.addDescription(<atop:mud_helmet>,"Harder than iron; also... much cooler.");
JEI.addDescription(<atop:mud_chestplate>,"Much better than running around in a loincloth and a cape.");
JEI.addDescription(<atop:mud_leggings>,"Harder than iron, with good ventilation.");
JEI.addDescription(<atop:mud_boots>,"Not the most protective, but pretty comfortable and durable.");
JEI.addDescription(<atop:mud_sword>,"A standard bronze sword.");
JEI.addDescription(<spartanshields:shield_basic_bronze>, "Also known as hoplon. Provides excellent cover without sacrificing offensive capacity.");

JEI.addDescription(<atop:tanzanite_helmet>,"In the heart of a vast forest...");

JEI.addDescription(<betterwithmods:steel_pickaxe>,"Provides excellent mining speed and durability, but can only be enchanted in the True Enchanting Table.");
JEI.addDescription(<betterwithmods:steel_mattock>,"One of the most versatile mining tools obtainable. Combines the Soulforged Pickaxe, Shovel and Hoe into one tool, but can only be enchanted in the True Enchanting Table.");
JEI.addDescription(<betterwithmods:steel_axe>,"Provides excellent chopping speed and durability, but can only be enchanted in the True Enchanting Table.");
JEI.addDescription(<betterwithmods:steel_shovel>,"Provides excellent digging speed and durability, but can only be enchanted in the True Enchanting Table.");
JEI.addDescription(<betterwithmods:steel_hoe>,"Provides excellent durability and harvest area, but can only be enchanted in the True Enchanting Table.");
JEI.addDescription(<betterwithmods:steel_hacksaw>,"Right-click with this on a block of soulforged steel to cut down the block!");

JEI.addDescription([<betterwithaddons:steel_machete>],["A multipurpose tool. Cuts through thick foliage and spiderwebs easily. Acts like shears. When right-clicked, places vines from your inventory. Can only be enchanted in the True Enchanting Table."]);
JEI.addDescription([<betterwithaddons:steel_matchpick>],["A multipurpose tool. When right-clicked, places torches from your inventory. If you have no torches, or if you're sneaking, it will ignite the ground instead. Useful for exploring the Nether. Can only be enchanted in the True Enchanting Table."]);
JEI.addDescription([<betterwithaddons:steel_spade>],["A multipurpose tool. When you dig up any soil or sand, it will be placed directly in your inventory. Right-clicking with the Spade places soil and sand from your inventory. Can only be enchanted in the True Enchanting Table."]);
JEI.addDescription([<contenttweaker:steel_crowbar>],["A tool that can be used to mine or instantly remove highly resistant blocks at the expense of more durability."]);
JEI.addDescription([<contenttweaker:sfs_masonpick>],["A peculiar pickaxe that can be used to instantly remove highly resistant blocks at the expense of more durability."]);
JEI.addDescription([<contenttweaker:mythril_masonpick>],["A peculiar pickaxe that can be used to instantly remove highly resistant blocks at the expense of more durability."]);
JEI.addDescription([<betterwithaddons:steel_kukri>],["A multipurpose tool. Cuts through any wood or leaves. Wood harvested by this tool will be collected instantly. Right-clicking with the Kukri places saplings from your inventory. Can only be enchanted in the True Enchanting Table."]);
JEI.addDescription([<betterwithaddons:steel_carpentersaw>],["A multipurpose tool. Wood blocks mined will be placed in your inventory. Right-clicking with the Carpenter Saw places processed wooden blocks such as slabs, planks, or stairs from your inventory. Can only be enchanted in the True Enchanting Table."]);

JEI.addDescription(<pyrotech:bucket_wood>,"This won't last long. Don't even think of putting hot fluids in it!");
JEI.addDescription(<pyrotech:bucket_stone>,"It is important to know that a metal bucket may not melt with lava inside, but will surely get hot enough to scorch off all the layers of your skin! Lava is no joke, nor should it be treated like one.");
JEI.addDescription(<pyrotech:crude_fishing_rod>, "A less than ideal fishing rod. May break unexpectedly after each use!");

JEI.addDescription(<quark:witch_hat>,"Enchanted thread is woven throughout the inside... and it's comfy, too! Protects your items from being cursed by spectres.");
JEI.addDescription(<betterwithmods:ender_spectacles>,"...if you gaze long into the End, the End also gazes into you. [DISABLED]");
JEI.addDescription(<quark:archaeologist_hat>,"Wearing this hat makes you feel a little more adventurous, a little luckier, and a little more likely to store artifacts in museums.");
<quark:archaeologist_hat>.addTooltip("When worn, provides a slight chance to unearth additional gems when mining gemstone ores.");

JEI.addDescription(<mod_lavacow:bonesword>,"You'll really bone your enemies with this sword - thanks to all those teeth from slain predators. Remember: the bigger they are, the harder they fall.");
JEI.addDescription(<dungeontactics:sharp_stick>,"Preferable to a toy sword, it's mostly useful to newly-stranded survivors in unfamiliar lands. Very low durability, but these can be stacked.");
JEI.addDescription(<dungeontactics:golden_club>,'An unconventional "weapon" from a dark era used to torment the people of the Nether. It can disarm enemies.');
JEI.addDescription(<dungeontactics:golden_battleaxe>,"Used to execute prisoners. The material it is made of could be considered a case of adding insult to fatal injury, rather than the other way around.");
JEI.addDescription(<trumpetskeleton:trumpet>,"No human should hold this much power.");
JEI.addDescription(<dungeontactics:silver_sword>,"The True Dark's Edge is a living blade fused with the endless power of the fallen. Its abilities allow you to draw strength from other's suffering, empower yourself by siphoning power from the blade itself, and strike at your enemies' souls, bypassing some of their armor.");

JEI.addDescription(<pyrotech:matchstick>,"Of a single use and made with common materials. It can light a kiln if held down but it is not as convenient as a flint and steel.");

JEI.addDescription(<toolbelt:belt>,"A rudimentary belt crafted using leather straps and durable fibers. A convenient way of holding many tools for quick access on one's person. Once you put on the belt, hold ` (by default, can be rebound) to access the pouches and add or remove items. Holds two tools by default, and every belt pouch you attach in an Iron Anvil allows it to hold one more, up to nine.");
JEI.addDescription(<toolbelt:pouch>,"Attach these to a tool belt in an Iron Anvil to allow your tool belt to hold more tools. Every belt pouch you attach allows it to hold one more tool, up to nine.");

JEI.addDescription(<dungeontactics:high_striker>,"Seemingly possesed by a playful spirit. Launches targets high into the sky.");
JEI.addDescription(<dungeontactics:wackerjab>,"Maybe made by a mad god or maybe by a force of pure entropy. The Wackerjab can turn the target into anything, at random.");
JEI.addDescription(<dungeontactics:taser>,"Fallen from above, only with a carefully precise and near hit, it will summon the roar of the skies.");
JEI.addDescription(<dungeontactics:claws>,"Evoking the arts of ancestral tribes from long ago, these claws will feed their owner with the vital energy of others in exchange of the owner's own energy.");
JEI.addDescription(<dungeontactics:lithen_scythe>,"The unique tool of a long forgotten being, one that had no desire to harm others. Redirects the vitality of its victims to the owner for a short period of time.");
JEI.addDescription(<dungeontactics:pirate_hook>, "A symbol of avarice that will transform vital energy into solid matter, but only at the closest range where hate and damnation takes physical form.");
JEI.addDescription(<dungeontactics:engineer_dungarees>, "Working outfit; will protect against some traps, like clamp traps. Wear with gold, iron, or diamond boots for maximum protection from base defenses.");

JEI.addDescription(<defiledlands:the_ravager>, "Fashioned out of a Black Heart, this weapon has an incredibly fast rate of fire, able to deal much damage at the expense of rather expensive ammunition.");
JEI.addDescription(<defiledlands:pellet_umbrium>, "A pellet made of heavy Soul Forged Steel, able to withstand the energy expelled by a Black Heart and made lighter with a soft core of gravitite.");


/* Ores and Ingots */
val crudeSteelIngot = <dungeontactics:steel_ingot>;
val sfsSteelIngot = <betterwithmods:material:14>;
val charcoal = <minecraft:coal:1>;
val zincOre = <pyrotech:rock:3>;

JEI.addDescription(<endreborn:block_essence_ore>, "A hard and somewhat hypnotizing rock some consider to be unnatural. It is the source of End essence.");
JEI.addDescription(<endreborn:item_end_essence>, "As their civilization collapsed, the ensuing chaos leaked living entropy into the world; entropy that can replace substances long gone from this world in the right hands.");
JEI.addDescription(<biomesoplenty:biome_essence>,"Residual energy of that which was extinguished by the Void. Can be found at the bottom of the Ender Dragon island.");
JEI.addDescription(<ore:ingotSilver>,"A material known to be effective when used against undead monsters. Silver is strong in damage and efficiency, but weak in other aspects.");
JEI.addDescription(<ore:ingotIron>,"Although bronze is tougher and more durable than iron, iron will always be far more versatile for all sorts of crafting and utilities.");
JEI.addDescription(<contenttweaker:material_part:49>,"Iron with very little carbon content and traces of slag is called wrought iron. Strong but somewhat brittle, it finds application in machinery and ornamentation.",'Most peculiar are the tremendous amounts of this metal that are found buried underground, for it does not form "naturally".');
JEI.addDescription(crudeSteelIngot,["Steel made in a crucible is not the most pure, strong or durable alloy of steel, but it manages to easily outclass bronze. Steel is widely used in mechanisms for its durability.",'Although smiths have discovered alloys of steel that are much harder and flexible, the complex process has been lost to the ages while others have been deemed too "disturbing" to make. Yet there are rumors that a craftsperson skilled enough could make a steel alloy better than anything discovered before.']);
JEI.addDescription(sfsSteelIngot,"Used as a late-game crafting material, capable of creating some of the most versatile tools around. It is also needed for some advanced contraptions.");
JEI.addDescription(<ore:ingotBronze>,"Tougher than iron, but not quite as good as steel. Not quite as versatile as iron, either.");
JEI.addDescription(<ore:ingotBrass>,"Used for machines that have lots of moving parts and require little friction. It also has several accoustic properties.");
JEI.addDescription(<rotn_blocks:exorite_crystal>,"A beautiful gem common to the lands of the Ender folk, sometimes confused with amethysts from the Nether. It possesses qualities that can only be described as alien.");
JEI.addDescription(<netherex:amethyst_crystal>,"A beautiful gem native to the lands of the Pigfolk, this variety is most rare since all known deposits in the Nether have been mined up. Some villagers in the coldest of places collect this gem through unknown methods.");
JEI.addDescription(<ore:gemDiamond>,'Diamond! The hardest material available in this world where you awakened. Its applications are countless, but apart of serving various purposes as a gem, like most other gems it can prove a powerful reinforcing material for steel alloy; diamond ingots can create "diamond" armor, tools and weapons.');
JEI.addDescription(charcoal,"The process to obtaining quality charcoal requires either a proper kiln or pit burning. A simple furnace's direct fire is too strong and would just burn the wood...");
JEI.addDescription(<quark:biotite>,"An otherworldly crystal made of tough organic matter. Can be found on the center island after killing the Ender Dragon.");
JEI.addDescription(<ore:dustCopper>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustZinc>,"Can be extracted from zinc pebbles found in frozen biomes or from marmatite found near wonder geodes. Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustTin>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustBronze>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustIron>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustGold>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustSilver>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustGravitite>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(<ore:dustEndorium>,"Crumblier metals can be bashed into workable dusts without the need of an anvil.");
JEI.addDescription(zincOre, "Also known as calamine. It can be found underground in freezing biomes where lodestones also appear.");
JEI.addDescription(<biomesoplenty:gem:5>, "An unstable crystal that almost seems to be alive, rarely found in 'wonder geodes.' Current discoveries include the ability to allure and syphon spirits and souls. Maybe more uses will be discovered in the future.");
JEI.addDescription(<biomesoplenty:gem:5>, "An old tale tells of an army that laid weapons down and gave birth to new life.");

/* Simple ores */
# Copper
JEI.addDescription(<ore:ingotCopper>,"A rudimentary but serviceable metal. Best used to make redstone components and bronze.");
//JEI.addDescription(<ore:blockCopper>, "Blocks of copper have the particularity of developing a crust or patina of a beautiful color similar to diamond; this natural feature can be prevented by coating it in wax.");

# Tin
JEI.addDescription(<ore:ingotTin>,"Good for building structures and creating components. Best used to make bronze and a few simple utility items.");

# Viridium
JEI.addDescription(<ore:ingotViridium>,"Viridium is found underground in the Beneath. A brittle, almost glasslike material; strangely light... literally. Weighs very little, and gives off a dim glow in the otherwise suffocating darkness of the Beneath.");
JEI.addDescription(<simpleores:adamantium_helmet>,"Lightweight and highly protective. Let the conquest begin!");
JEI.addDescription(<simpleores:adamantium_chestplate>,"Lightweight and highly protective.");
JEI.addDescription(<simpleores:adamantium_leggings>,"Lightweight and highly protective.");
JEI.addDescription(<simpleores:adamantium_boots>,"For long runs.");
JEI.addDescription(<simpleores:adamantium_sword>,"So light, you could probably wear full armor and carry two of these around with ease.");
JEI.addDescription(<simpleores:adamantium_pickaxe>,"Fragile, yet very effective.");
JEI.addDescription(<simpleores:adamantium_axe>,"Small tree killer.");
JEI.addDescription(<simpleores:adamantium_shovel>,"No dirt block will resist you now.");
JEI.addDescription(<simpleores:adamantium_hoe>,"Is this thing just for farming?");
JEI.addDescription(<simpleores:adamantium_shears>,"One of a kind. These shears are so sharp and nimble, you could actually cut the explosive glands off of a common creeper.");

# Mythril
JEI.addDescription(<ore:ingotMythril>,"Mythril is found deep underground in the Beneath, not always as an ore. A powerful arcane metal with peculiar traits that set it apart from other ores.");
JEI.addDescription(<simpleores:mythril_helmet>,"Comfortable, practical and will keep you alive.");
JEI.addDescription(<simpleores:mythril_chestplate>,"Comfortable, practical and will keep you alive.");
JEI.addDescription(<simpleores:mythril_leggings>,"Comfortable, practical and will keep you alive.");
JEI.addDescription(<simpleores:mythril_boots>,"Comfortable, practical and will keep you alive.");
JEI.addDescription(<simpleores:mythril_sword>,"An elegant weapon... for a more civilized age. This is the most powerful sword the earth can provide.");
JEI.addDescription(<simpleores:mythril_bow>,"Powerful, nimble, and deadly.");
JEI.addDescription(<simpleores:mythril_pickaxe>,"The cooler blue pickaxe. Mine with more grace than ever before!");
JEI.addDescription(<simpleores:mythril_axe>,"The heads of your enemies will fall before you... or maybe just a lot of tree trunks.");
JEI.addDescription(<simpleores:mythril_shovel>,"An elegant design for a less-than-glamorous task.");
JEI.addDescription(<simpleores:mythril_hoe>,"Capable of reaping all those pesky crops.");

# Onyx
JEI.addDescription(<simpleores:onyx_ore>,"A reclusive crystalline mineral found in the Nether. Extremely tough and one of the hardest known materials. Tools made of Soulforged Steel or other... 'exotic' components are strong enough to break it into chunks.");
JEI.addDescription(<ore:gemOnyx>,"A reclusive crystalline mineral found in the Nether. Extremely tough and one of the hardest known materials. Tools made of Soulforged Steel or other... 'exotic' components are strong enough to break it into chunks like these.");
JEI.addDescription(<simpleores:onyx_block>,"Arguably one of the hardest materials to have ever existed. Somehow, in the hands of an expert crafter, it becomes illogically malleable, but few have successfully harvested Onyx and lived to tell about it...");
JEI.addDescription(<simpleores:onyx_helmet>,"Heavy-duty protection. Armor doesn't get much better than this.");
JEI.addDescription(<simpleores:onyx_chestplate>,"Heavy-duty protection. Armor doesn't get much better than this.");
JEI.addDescription(<simpleores:onyx_leggings>,"Heavy-duty protection. Armor doesn't get much better than this.");
JEI.addDescription(<simpleores:onyx_boots>,"Heavy-duty protection. Armor doesn't get much better than this.");
JEI.addDescription(<simpleores:onyx_sword>,"The sheer magnitude of this thing is enough to give any monster a hard time, especially in tandem with the onyx greatbow.");
JEI.addDescription(<betterwithaddons:greatbow>,"The tension built by this bow paired with its twin sword will eradicate any living being that stands in its way. Only a greatarrow can withstand such pressure.");
JEI.addDescription(<simpleores:onyx_pickaxe>,"Ergonomic to a fault. This is a true miner's best friend... although not quite as adaptable as a tool made of Soulforged Steel.");
JEI.addDescription(<simpleores:onyx_bow>,"OwO? What's this, how did you get it?");
JEI.addDescription(<simpleores:onyx_axe>,"Chop through wood like butter!");
JEI.addDescription(<simpleores:onyx_shovel>,"Huge blade for huge pebbles.");
JEI.addDescription(<simpleores:onyx_hoe>,"This won't burn the fields, right?");

/* Manufacturing */
val hempFiber = <betterwithmods:material:3>;
val windmillBlade = <betterwithmods:material:11>;
val millstone = <betterwithmods:single_machine>;
val woodChips = <pyrotech:rock:7>;
val pulp = <pyrotech:material:25>;
val bark = <ore:barkWood>;
val denseRedstone = <pyrotech:material:36>;
// val fiber = <betterwithmods:material:3>;
val plantFiber = <pyrotech:material:12>;
val driedPlantFiber = <pyrotech:tinder>;
val twine = <pyrotech:material:14>;
val durableTwine = <pyrotech:material:26>;
val coade = <liquid:coade_stone>;
val kaolin_quartz = <pyrotech:material:37>;
val expertly_crafted_arrow_head = <betterwithaddons:japanmat:17>;
val ground_nether_dust = <ore:dustNetherrack>;

JEI.addDescription(windmillBlade,"Can be crafted using any wooden slab, or cheaper using wooden siding once you build a Saw!");
JEI.addDescription(millstone,"A necessary machine for every starting mechanist! Needs mechanical power from the top or bottom.");
JEI.addDescription(<betterwithmods:saw>,["Requires continuous mechanical power to work. A windmill or waterwheel will suffice.","","The saw can also be used to obtain heads from creatures that die to it if the creature is standing on a stone chopping block."]);
JEI.addDescription(<well:well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:white_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:orange_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:magenta_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:light_blue_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:yellow_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:lime_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:pink_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:gray_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:silver_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:cyan_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:purple_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:blue_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:brown_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:green_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:red_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<well:black_well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
JEI.addDescription(<harvestcraft:well>,"Well well well. How do you have this?");
JEI.addDescription(<betterwithmods:wooden_gearbox>, ["One input and multiple outputs; insert a powered axle on the side marked with arrows to redirect rotatory energy to the other sides.","","Remember, wooden axles can only transfer energy up to three blocks of distance (unless they act as a frame for a vertical windmill).","Can be turned off by giving it a redstone signal; attaching a chime will output a redstone signal if it is raining."]);
JEI.addDescription(<betterwithmods:material>,"Broken gears result from overstressed or damaged machinery. Luckily, they can be repaired fairly easily.");

JEI.addDescription(<pyrotech:drying_rack:1>, "This device may hold 4 items at a time. Drying time is heavily reduced by nearby fire, but all the fire in the world won't dry something exposed to rain.");
JEI.addDescription(<pyrotech:chopping_block>, "A chopping block enables the harvesting of both bark and wood chips, which can be used in the advanced crafting of tanned leather or tar and charcoal production.");
JEI.addDescription(<pyrotech:stone_kiln>,"A primitive machine that can smelt certain items like clay, bronze alloy, and charcoal in batches of 64. Needs to be ignited with a hand drill or a better igniter with fuel placed inside. Use and hold the igniter until the kiln is lit.");
JEI.addDescription(<pyrotech:brick_kiln>,"Upgraded version of the brick kiln, the refractory kiln! Can smelt certain items like clay, bronze alloy, and charcoal in batches of 64 similar to the brick kiln, but faster and more effectively! Ignited the same way as a brick kiln.");
JEI.addDescription(<pyrotech:anvil_granite>,"Pretty useful to bash or break items into smaller pieces. Can turn tin and copper into pebbles suitable for making bronze.");
JEI.addDescription(<pyrotech:compacting_bin>,"Remove finished product using a shovel.");

JEI.addDescription(woodChips, "This byproduct of wood can be just as useful as the base material in the hands of a resourceful carpenter.");
JEI.addDescription(bark,"Woof! Obtained from stripping or sawing up logs, bark is most useful for tanning leather; however, it has plenty of other utility in resourceful hands.");
JEI.addDescription(driedPlantFiber, "Small strands of dried fiber. Can be tied together for some string or better quality fiber.");
JEI.addDescription(plantFiber, "Various high-quality plant material found by breaking different kinds of grass.");
JEI.addDescription(hempFiber,"High quality fiber used in advanced recipes where string falls short; can be made by interlacing some plants.");
JEI.addDescription(twine, "A twine with roughly the same resistance as string from wool or spider-silk.");
JEI.addDescription(durableTwine, "By soaking twine in wood tar, it can achieve roughly the same durability and strength of higher quality hemp fibers.");
JEI.addDescription(pulp, "Obtained either by macerating wood and sugar cane or by beating the pulp out of bark, this is an efficient resource for making paper.");
JEI.addDescription(coade, "An homogenous magma of varied stone that is easy to manipulate. Easily moldable into any shape; although not clay as the orignal coade, that name stuck with it over time.");
JEI.addDescription(denseRedstone, "Found deep below in caves, the purest variety of redstone, it pulsates frantically and shines with fiery energy when it is moved around too much. It would seem as if countless restless souls were trapped inside a mineral cage for all eternity... is this source of power really without a cost?");
JEI.addDescription(kaolin_quartz, "A valuable cluster of high quality quartz obtained from the Nether; it contains a good amount of kaolin, the most important component in the elaboration of porcelain.");
JEI.addDescription(<betterwithmods:material:15>, "The dust of dried, flesh-like rock. It instantly becomes a viscuous substance when touching fluids; a conveyor belt could be another method of transport for this...");
JEI.addDescription(ground_nether_dust, "The dust of dried, flesh-like rock. It instantly becomes a viscuous substance when touching fluids; a conveyor belt could be another method of transport for this...");
JEI.addDescription(<rustic:rope>, "Used for supporting various plants so that they can grow, such as Roma tomatoes and Cayenne chilies. Can be tied onto a crop stake.");
JEI.addDescription(<rustic:crop_stake>, "Used for supporting various plants so that they can grow, such as Roma tomatoes and Cayenne chilies. Simple Rope can be tied onto a crop stake.");
JEI.addDescription(expertly_crafted_arrow_head, "This arrow head is of an exquisite quality and was clearly made by the hand of someone who has dedicated their whole life to their profession. It may be used by an equally talented fletcher to make high grade arrows.");
JEI.addDescription(<pyrotech:compost_bin>,"Composting is simple; fill up the composter with food you don't need, pour in a bit of water, and let time take care of the rest.");

JEI.addDescription(<dungeontactics:engineers_wrench_iron>,"Used to rotate blocks, such as pistons or fans, and to reset triggered traps. Good for picking up redstone stuff and rails. Sneak & use on a trap plate to hide it.");
JEI.removeAndHide(<base:wrench>);
JEI.addDescription(<contenttweaker:peat>,"A mass of partially decomposed vegetal matter found in swamps, bogs and the like. It's a good fuel, but it can be improved further.");
JEI.addDescription(<contenttweaker:mossy_peat>,"Peat overtaken by cave moss. This sponge-like mass will absorb coalbed methane like no other. It also has extreme spring potential, jump at your own risk.");
JEI.addDescription(<contenttweaker:charmpeat>,"The result of mossy peat absorbing coalbed methane. The gas contained within can burn hot enough to smelt any metal.");


/* Multiblock Kilns, Refractory Structures, Pit Burning, Camping and Cooking */
val refractoryClayBall = <pyrotech:material:4>;
val refractoryBrick = <pyrotech:material:5>;
val slag = <pyrotech:material:8>;

JEI.addDescription(<contenttweaker:brick_minecraft_clay>,["Other than the regular uses it has as a material or building block, bricks are useful to build huge and slow cooking kilns; to build a slow cooking kiln, make a frame consisting of four brick blocks with a space in the middle in which to place the block you wish to cook, then light the block below the structure.","","These structures can never achieve the level of high temperature a carefully crafted kiln or a refractory structure could achieve, since too much air flows between gaps and the heat source is too far away."]);
JEI.addDescription(<pyrotech:material>, "Ashy remains of pit burning. With a little care, a lot of pure ash can be extracted from this pile.");

JEI.addDescription(refractoryClayBall, "This muddy, limy ball contains a great concentration of particular elements which makes it practically impervious to heat once processed. An excellent material to make a heat-resistant burning station.");
JEI.addDescription(slag, "Leftovers of certain materials containing precious components such as silica, aluminum, calcium and magnesium.");
JEI.addDescription([<contenttweaker:brick_pyrotech_refractory>, refractoryBrick], "Refractory materials enable the construction of structures for burning certain materials at high temperatures. Build a room made entirely of refractory materials, place the resource to be burned inside (filling any spaces), ignite it, then quickly cover or enclose the space. If done correctly, the material will burn and output the refined material, as well as depositing any resulting liquid if a collector is present.");
JEI.addDescription(<pyrotech:refractory_door>, "A refractory burning structure works by burning without actually starting a fire, thus, it is of tremendous importance than no air gap is present between the walls of the structure and the material being burned; that includes the door...");
JEI.addDescription(<pyrotech:living_tar>, 'Burning slowly, this tarry meat substance is in the words of its inventor, "A strong candidate for the most loathsome of fuels."');
JEI.addDescription(<pyrotech:tinder>, "Placing it on the ground and directly adding some logs, then lighting it up, will create a functional campfire for primitive cooking and outdoors camping.");

JEI.addDescription(<exsartagine:range>, "The most efficient way to heat a kitchen. Adding fuel to it will heat a Cooking Pot, Wok or Bake Kettle above it; additionally, it can fuel up to three Stove Extensions to its sides, heating appliances above them for the same fuel cost.");
JEI.addDescription(<exsartagine:range_extended>, "An extension for the Stove. Place up to three total of these on either side of a Stove block to capitalize on the Stove's efficiency and heating capabilities!");
JEI.addDescription(<exsartagine:hearth>, "A rudimentary but effective way to set up a kitchen. Can heat itself and one Hearth Extension to its side, heating Cooking Pots, Wok or Bake Kettles above them.");
JEI.addDescription(<exsartagine:hearth_extended>, "An extension for the Hearth. Place one to the side of the Hearth for an extra space to heat up your cooking appliances for no extra fuel cost! Look to the Stove for an upgrade, which supports three extensions at a time.");
JEI.addDescription(<exsartagine:wok>, "Excellent for frying singular ingredients.");
JEI.addDescription(<exsartagine:pot>, "Excellent for boiling singular ingredients.");
JEI.addDescription(<exsartagine:kettle>, "Excellent for all types of cooking. The most versatile cooking appliance you will ever need!");

JEI.addDescription(<minecraft:furnace>, "A versatile machine for smelting ores and certain other substances; not as specialized as a kiln or powerful as a crucible. It's not quite an oven either, but the heat it emanates can be taken advantage of by Woks, Cooking Pots and Bake Kettles placed above it.");


/* Plants */
JEI.addDescription(<rustic:wildberries>,"A strong-flavored pome-like fruit that can be prepared or distilled. Carminberries have a highly staining red pigment which make them a perfect red dye.");
JEI.addDescription(<rustic:wildberry_bush>,"Carminberry bushes are a harmless source of food and they can be multiplied using bone meal. Carminberry bushes grow naturally in most warm and moderate biomes.");
JEI.addDescription(<rustic:mooncap_mushroom>, "Found in Jungle biomes and caves.");
JEI.addDescription(<rustic:cloudsbluff>,"This puffy white flower is found at high altitudes.");
JEI.addDescription(<betterwithaddons:thorn_rose>, "A mysterious plant that rapidly grows on sand and will wander towards structures like walls. Causes significant damage and can be harvested for Midori and Thorny Roses.");
JEI.addDescription(<biomesoplenty:berries>, "A berry extracted from an unwilling hawthorn. Although they are unfulfilling and sour, horses enjoy them, but struggle to access them due to their thorny guard. If fed many prepared hawthorn berries, your four-legged friend may become a steed worthy of envy.");
JEI.addDescription(<biomesoplenty:plant_0:5>, "The common hawthorn bush produces a sour, hard berry and has soft leaves. When something tries to pick its fruit, its mildly toxic branches will harden and prick any unwanted visitors, though it may be worth the pain; the berry itself has peculiar properties when prepared and fed to horses.");
JEI.addDescription(<minecraft:cactus>,"Can be used to fill a bottle with water. Drink it in a hot and arid biome to receive a small buff.");
JEI.addDescription(<pyrotech:mulch>, "The smart gardener knows that with some nitrogen and potash, one gets mulch! Applying it to farmland will protect the block from being trampled and will help crops grow a little faster.");

JEI.addDescription(<harvestcraft:juteitem>, "Durable, but needs to be dried and macerated first to get any value out of it. This effort pays off with a higher yield of fiber.");
JEI.addDescription(<harvestcraft:flaxitem>, "Flax is versatile when it comes to textiles, though it is not as durable as hemp. Flax is also useful in making light blue dye.");
JEI.addDescription(<harvestcraft:kenafitem>, "Contains a good amount of fiber... but this fiber is mostly useful for paper, not textiles.");
JEI.addDescription(<harvestcraft:sisalitem>, "Also known as henequen, a very durable 'palm-like' plant native to dry biomes. This plant is a decent source of fiber and string since its leaves are thick and strong.");
JEI.addDescription(<harvestcraft:cottonitem>, "Cotton can be used in various textiles, but it is not the most naturally resilient fiber.  When used to make clothing or padding, however, it's very comfortable.");
JEI.addDescription(<betterwithmods:hemp>,"An extremely useful plant, hemp can make very high quality and durable fibers with a variety of uses. It's easily made into sails and different kinds of textiles. Grows two blocks high like Sugar Cane - be sure to only harvest the top one!");
JEI.addDescription(<growthcraft_rice:rice>,"A unique kind of grass that grows on shallow water, ponds where it is planted are known as rice paddies. Raw rice grains are particularly full of harmful bacteria.");
JEI.addDescription(<growthcraft_hops:hop_seeds>,"Hops used to make ale wort and alcohol; they need a Crop Rope acting as a guide to grow.");
JEI.addDescription(<biomesoplenty:plant_1:3>,"Wild rice can be found growing abundantly in some wet areas. Harvesting it to obtain its grains to replant and farm them, or it can be used directly in cooking.");

/* Food */
JEI.addDescription(<animania:friesian_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
JEI.addDescription(<animania:holstein_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
JEI.addDescription(<animania:jersey_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
JEI.addDescription(<animania:goat_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
JEI.addDescription(<animania:sheep_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");

JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_jersey", Amount: 1000}),"Jersey Milk is obtained from Jersey Cows.");
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_friesian", Amount: 1000}),"Friesian Milk is obtained from Friesian Cows.");
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_holstein", Amount: 1000}),"Holstein Milk is obtained from Holstein Cows.");
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_goat", Amount: 1000}),"Goat Milk is obtained from goats.");
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_sheep", Amount: 1000}),"Sheep Milk is obtained from sheep.");

JEI.addDescription(<minecraft:poisonous_potato>, "Turned rotten through an infectious disease. If fed to certain baby animals, their growth will be stunted forever.");
JEI.addDescription(<mod_lavacow:parasite_item>, "These parasites feed off victims of the ancient plague; an opportunistic creature that took refuge in a grand catastrophe. When used as yeast for liquor, it makes it poisonous, yet undetectable...");
JEI.addDescription(<mod_lavacow:parasite_item:1>, "These parasites feed off mummies in deserts, which decay much slower thanks to ancient rituals.");
JEI.addDescription(<mod_lavacow:parasite_item:2>, "These parasites feed off rotting matter in the same manner as fungi, but still latch onto anything alive.");
JEI.addDescription(<exsartagine:yeast>, "This kind of yeast can be obtained by placing down flour on a surface, right-clicking it with a water bottle and waiting until it changes appearance. Breaking the changed block will yield this item.");

/* Mobs and Drops */
val dung = <betterwithmods:material:5>;

JEI.addDescription(<quark:parrot_egg:*>, "Much like other birds, parrots love the taste of veggies and seeds. Beetroot seeds, in particular, are their favorite snack during the mating season: some time after eating beetroot seeds, a parrot will lay an egg.");
JEI.addDescription(<minecraft:gunpowder>, "The central ingredient of most explosives. It can also be placed on the ground and ignited as a fuse.");
JEI.addDescription(<minecraft:skull:3>, "An old village legend claims that a golem named after a specific person carries a sliver of that person's soul… and those who practice forbidden arts can bring forth an echo of that soul to the physical realm. Named Snow Golems equipped with a pumpkin will drop a copy of that person's head if killed by a witch.");
JEI.addDescription(<minecraft:dragon_breath>, "Acidic breath of the accursed beast, infused with the energy of a plane outside all else. Its lingering aura can even affect stone.");
JEI.addDescription(<minecraft:blaze_rod>, "These stabilizing rods are used to neutralize the explosive elemental energy of a blaze. Even after being separated from their constructs, blaze rods are warm to the touch and make for a bizarre decoration if placed.");
JEI.addDescription(<quark:tallow>,"Used for making candles or repairing basic gear in an iron anvil. Pigs are a good source of tallow; it can also be obtained by soaking rotten flesh in hot wood alcohol (aka methanol).");
JEI.addDescription(<mod_lavacow:moltenbeef>,"Young Netherdrakes' first instinct is always to run, in order to keep out of their predators' reach. Adult Netherdrakes have no such instinct... because nothing messes with them.");
JEI.addDescription(<mowziesmobs:glowing_jelly>,"Puffbulbs are particularly fragile creatures that sustain themselves by absorbing energy from a living mineral, surviving against all odds amidst the horrors of the Beneath.");
JEI.addDescription(<mod_lavacow:dreamcatcher>,"If you sleep through the night with a dreamcatcher equipped or in your hand, there's a chance that a physical manifestation of your nightmares will be summoned when you awaken...");
JEI.addDescription(<primitivemobs:wonder_sap>,"A marvelous material produced by grove sprites. It can turn other species of wood into the type of wood the grove sprite originated from. Most interestingly, when combined with certain dense liquids, it makes for an extremely strong adhesive. It also has various agricultural uses.");
JEI.addDescription(<biomesoplenty:flesh>, "It's surprisingly warm to the touch.");
JEI.addDescription(<primitivemobs:camouflage_dye>, "Now you see me, now you you don't... This substance found in chameleons can dye most things into camouflaging colors.");

JEI.addDescription(<betteranimalsplus:wolfhead_1>,"Direwolves would only ever submit to something they considered an apex predator. They accept no meat from strangers, but may accept the bones of terrifying creatures as treats.");
JEI.addDescription(<betteranimalsplus:wolfhead_1>,"To even attempt to tame a direwolf, one must need the head of a very powerful beast. One may be very obvious (it is a vanilla head) and the other is much less obvious.");
JEI.addDescription([<betteranimalsplus:coyotehead_1>, <betteranimalsplus:coyotehead_1>],"Coyotes will eat almost any common meat, as well as many kinds of fruit. They aren't picky eaters.");
JEI.addDescription([<betteranimalsplus:foxhead_1>, <betteranimalsplus:foxhead_1>, <betteranimalsplus:foxhead_2>, <betteranimalsplus:foxhead_3>, <betteranimalsplus:foxhead_4>],"Foxes usually hunt animals smaller than them, such as chickens, frogs, pheasants, and rabbits. They're also fond of berries.");
JEI.addDescription([<betteranimalsplus:hirschgeistskull>, <betteranimalsplus:hirschgeistskull_1>],"Cursed skull of a powerful forest spirit.");
JEI.addDescription(<betteranimalsplus:hirschgeistskullwearable>,"Cursed skull of a powerful forest spirit, prepared for use as ritual head armor. Wearing this artifact commands respect from even the fiercest woodland creatures.");

JEI.addDescription(dung,"Gross? No, it's nature being useful! Obtained by feeding tamed wolves and waiting a fair amount of time. Triggers a fermentative process to make tanned leather.");
JEI.addDescription(<betterwithmods:breeding_harness>, "All you need is submission; this harness will take care of the rest.");

JEI.addDescription(<netherex:frost_rod>, "Stabilizing rod for a chilling elemental construct, favored as a guardian by users of ice magic.");
JEI.addDescription(<netherex:frost_powder>, "The remains of crushed frost rods are still cold enough to cause frostbite if handled improperly.");
JEI.addDescription(<netherex:coolmar_spider_fang>, "Coolmar scuttlers are not true spiders, but unholy constructs of bone and ice. Many folk legends claim that these monstrosities will emerge before the end times.");

JEI.addDescription(<betterwithmods:material:54>, "Unlike most spiders, the notorious jungle spiders are cooperative hunters. Jungle spider venom can cause severe vomiting and loss of appetite, but their prey rarely lives long enough to experience these effects.");
JEI.addDescription(<mod_lavacow:poisonstinger>, "Honeybees die after stinging once. Vespas keep stinging until you're dead.");

JEI.addDescription(<mod_lavacow:scythe_claw>, "Dreadful claw of the Ithaqua, a fiend of visceral hunger and fury.");

JEI.addDescription(<defiledlands:black_heart>, "A powerful heart. Fueled by incomprehensible evils...");
JEI.addDescription(<defiledlands:scuronotte>, "Scuronotte catches, condenses and feed off the natural magic present in defiled ecosystems.");
JEI.addDescription(<mod_lavacow:undyingheart>, "A powerful heart. Fueled by a terrible curse...");


/* Decorative Blocks */
JEI.addDescription(<minecraft:bed:*>, ["With some bits of padding and a little carpentry, one can create a place to lay their head, finding peaceful sleep until the glorious dawn."]);

JEI.addDescription(<minecraft:purpur_block>, ["One of the most distinctive styles of Ender architecture, favored by endermites as burrows to pupate into shulkers.","Long ago, the shulkers were easily controlled… but now, what remains of the Ender Empire cannot prevent the pests from infesting their cities."]);
JEI.addDescription(<betterwithaddons:elytra_magma>, "A mysterious block that creates a magical updrift if one flies over it with an elytra!");
JEI.addDescription(<minecraft:end_stone>,"Some have seen this para-dimensional stone floating around in the Overworld. Legends claim this stone to be the most common soil in the home of the Enderpeople, although it was described as covered with vibrant purple grass and flora.");

JEI.addDescription(<chutes:chute_wood>, "The benefit of 4 full blocks in 1. Especially useful to access underwater areas quickly.");
JEI.addDescription(<chutes:chute_entry_wood>, "The benefit of 4 full blocks in 1. Especially useful to access underwater areas quickly. This one acts as an entry point.");

JEI.addDescription(<quark:sugar_block>, "Thoughtless farmers will lose their precious sugar deposits if left near water – the blocks will dissolve outright.");
JEI.addDescription(<charm:gunpowder_block>, "Inert storage for an explosive element. Falls like sand and gravel. Like its item counterpart, it will dissolve in lava.");
//REPLACEME- JEI.addDescription(<primal:ore_salt:1>,"A huge chunk of halolite. It has lots of sodium chloride... salty!");
JEI.addDescription(<charm:rotten_flesh_block>, "Similar to the flesh found in the Nether, yet different - it twitches once in a while. If buried long enough, the rotten essence will seep out of the block...");
JEI.addDescription(<aether_legacy:aerogel>, "Formed by attempting to pour lava by hand in the Aether. Extremely blast resistant. Can only be mined with Masterwork tier pickaxes and up.");

JEI.addDescription(<quark:black_ash>, "Foul essence! Decay can be felt being constantly expelled from these remains. A single layer of this dust under a solid material will prevent any living creature from appearing on top of that surface.");
JEI.addDescription(<ore:blockCandle>, "An aesthetic alternative to torches. Will fall if their support is removed.");
JEI.addDescription(<minecraft:torch>, "An adventurer's best friend. Most will rather delve into caves looking for mineral coal than assemble a charcoal production operation, especially those in dire situations. Other more powerful light sources include Glaretorches, Hanging Lights or Lanterns.");
JEI.addDescription(<arcanearchives:quartz_sliver>, "A cheap alternative to torches obtained by smashing radiant quartz against a hard surface.");

/* Redstone, Automation and Functional Blocks */
JEI.addDescription(<quark:ender_watcher>, "Redstone technology combined with the unblinking will of an Eye of Ender. Emits a redstone signal when looked at.");
JEI.addDescription(<quark:gravisand>, "A peculiar substance with properties not even heard in tales of the fabled Aether. Will only fall when activated with redstone. If it is already in contact with the ground, the sand will instead float as if falling up.");
JEI.addDescription(<quark:gold_button>, "Emits a signal for 2 ticks.");
JEI.addDescription(<quark:iron_button>, "Emits a signal for 6 seconds, or 120 ticks.");
JEI.addDescription(<quark:obsidian_pressure_plate>, "Will only trigger if a human walks over it. Perhaps humanity indeed carries the heaviest burden.");
JEI.addDescription(<quark:redstone_inductor>, "Outputs a signal equal to the sum of its inputs. Can be locked with a comparator.");
JEI.addDescription(<quark:redstone_randomizer>, "Outputs a signal to either the left or right.");
JEI.addDescription(<minecraft:compass>, "Sneak and right-click on a bed, beacon, or banner to make the compass point to it. Create multiple compasses for different waypoints.");
JEI.addDescription(<betterwithmods:rope>, "A tough cord used in the construction of various components, or for pulling up Platforms in conjunction with a Pulley.");

JEI.addDescription(<ceramics:unfired_clay:9>, "Clay plates are used as the base for all logic components.");
JEI.addDescription(<contenttweaker:redstuff>, "On a day long forgotten, a local blacksmith took some iron and mixed it with some copper. Failing to produce anything of use, they accidentally knocked over the container into their beloved redstone wiring. Shocked but amazed, the blacksmith discovered a potent alloy and trademarked it: RedStuff™. No one really knows how it works, but it's commonplace to see some laying around in one's home.");
JEI.addDescription(<charset:stopwatch>, "A tool used to measure the time (in seconds) between two block updates. Use the stopwatch on the first block to be updated, then use the stopwatch on the second block to be updated. When the second block is updated, a display will appear above the second block showing the time difference between the block updates.");
JEI.addDescription(<charset:signal_meter>, "A tool used to measure the power of signals in cables and gates. Hold the signal meter and look at the power source to display the power level. The meter also works on the individual parts of gates!");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:nor", li: 1 as byte}), "A simple component that outputs a signal if any of its inputs are on. It has 3 inputs and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:nor", li: 0 as byte}), "A simple component that outputs a signal if all of its inputs are off. It has 3 inputs and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:buffer", li: 0 as byte}), "A simple component that outputs a signal if its input is off. It has 1 input and 3 outputs.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:nand", li: 1 as byte}), "A simple component that outputs a signal if all of its inputs are on. It has 3 inputs and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:nand", li: 0 as byte}), "A simple component that outputs a signal if any of its inputs are off. It has 3 inputs and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:xor", li: 0 as byte}), "A simple component that outputs a signal if either of its inputs are on, but not both. It has 2 inputs and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:xor", li: 1 as byte}), "A simple component that outputs a signal if both of its inputs are on or both are off. It has 2 inputs and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:buffer", li: 1 as byte}), "A component that reroutes a signal in configurable directions. It has 1 input and a maximum of 3 outputs.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:multiplexer"}), "A component that emits a signal according to the state of the back input, which acts as a toggle between the right and left sides, respectively. It has 3 inputs and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:pulse_former"}), "A component that emits a short pulse any time the input turns on. It has 1 input and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:repeater"}), "A component similar to a vanilla repeater in that it repeats signals back to full strength and has a tick delay. However, it has a max tick delay of 128 ticks and cannot be locked. It has 1 input and 1 output.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:randomizer"}), "A component similar to the simple randomizer. However, it randomizes each output individually, which is ideal for pulses with random length. Turning on the input allows randomization to occur, and turning off the input locks each output. It has 1 input and 3 outputs.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:rs_latch"}), "A component that switches between two states. One input will set the latch, and the other will reset it. Consecutive pulses to the same input will not change the state of the latch. It has 2 inputs and 2 or 4 outputs, depending on the configuration.");
// JEI.addDescription(<projectred-integration:gate:14>, "A component similar to a vanilla repeater in that it allows signals to be locked. When the back input is turned on, the outputs are set to the left input; when the back input is turned off, the outputs are locked. It has 2 inputs and 2 outputs.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:timer"}), "A component used to create second-long delays. When the input is off, the timer waits for the specified time before pulsing its outputs; when the input is on, the timer stops and resets back to 0. Right-click it to open the configuration GUI. It has 1 input and 3 outputs.");
// JEI.addDescription(<projectred-integration:gate:19>, "A component that retains an internal count, which cannot go below 0. When the count is at 0, the back output turns on; when the count is at the configurable maximum, the front output turns on. The left and right control the count by subtracting and adding respectively, or it can be flipped by shift-right-clicking the component with a screwdriver. The component can be configured via a GUI. It has 2 inputs and 2 outputs.");
// JEI.addDescription(<projectred-integration:gate:20>, "A component similar to a timer in that it has a configurable time. The timer can be reset using either the back or right inputs, and the back input can start the timer. While the timer is running, the left output is on; when the timer ends, the front output pulses. Right-click it to open the configuration GUI. It has 2 inputs and 2 outputs.");
JEI.addDescription(<charset:logic_gate>.withTag({logic: "simplelogic:synchronizer"}), "A component that acts as an intermittent AND gate. Either of the inputs have to be on at any point for the output to pulse on and then reset the internal state. However, the back input can be turned on to reset the internal state. It has 3 inputs and 1 output.");
JEI.addDescription(<charset:logic_wire_n:0>, "A simple cable made out of some RedStuff™.");
JEI.addDescription(<charset:logic_wire_n:1>, "A free-standing cable that does not require a wall to adhere to. It can be connected to normal wires by placing a flat cable in the same block as the free-standing cable.");

JEI.addDescription(<sereneseasons:greenhouse_glass>, "Framed glass that has been enchanted to allow any crops under its veil to grow out of season, as long as there is light and water present. Crops more than 7 blocks below the glass will not receive its benefits.");

JEI.addDescription([<advancedmortars:mortar:0>, <advancedmortars:mortar:2>, <advancedmortars:mortar:4>, <advancedmortars:mortar:6>], "Magic mortars... [description WIP]");
JEI.addDescription(<advancedmortars:mortar:1>, "Made of durable metals and totally kitchen-safe.");
JEI.addDescription(<advancedmortars:mortar:3>, 'A conglomerate of leftover materials. Although less durable than its other mortar counterparts, it still "mortars" properly.');


/* Mechanical, Defense, and Item Movement */
JEI.addDescription(<quark:rope>, "A useful tool for traversal. Right click on a rope with more rope to descend downward. It will also pull itself and blocks underneath it upwards if right-clicked while sneaking.");
JEI.addDescription(<growthcraft:rope>, "Can be attached to fences. Make a horizontal line two blocks above and parallel to farmland for grapes to hang on. Make a line perpendicular to farmland for hops to grow upwards.");
JEI.addDescription(<quark:chain>, "A small chain such as this can be used to link a series of minecarts or boats, allowing for far more organized journeys.");
JEI.addDescription(<minecraft:minecart>, "Sneak and right click with dye in hand to color minecarts!");
JEI.addDescription(<minecraft:lead>, "Besides leading creatures by hand, leads can be tied to a fence or even between two fences to create a connection. Some creatures will never submit to a lead - for that, the use of a refined chain is required.");

JEI.addDescription(<quark:chute>, "A glorified funnel. Items fed into an item chute by a hopper will be expelled directly beneath it.");
JEI.addDescription(<quark:grate>, "Most animals will never attempt to walk over the precarious-looking surface of a grate. Items, however, will fall right through.");

JEI.addDescription(<quark:iron_rod>, "Useful for structural support, but most prized as a powerful mining tool. When pushed by a piston, it can pierce through almost anything.");
JEI.addDescription(<quark:iron_ladder>, "The tin ladder can effectively sustain its own weight without a supporting surface. Right-clicking it with another tin ladder will extend the ladder downwards.");

JEI.addDescription(<pyrotech:faucet_stone>,"When right-clicked, it will start to drain any liquid from one container to another container below itself. Right-click again to stop the faucet's flow. Can be powered with redstone.");
JEI.addDescription([<betterwithaddons:aqueduct>,<betterwithaddons:aqueduct:1>,<betterwithaddons:aqueduct:4>],"A smart solution to long-distance water transport. Aqueducts carry water exclusively from watery biomes, such as rivers, oceans, and wetlands - other sources won't suffice.");
JEI.addDescription(<betterwithaddons:aqueduct:4>,"The great desert empires relied on these constructions where wells fell short. Few aqueducts still remain standing today.");

JEI.addDescription(<contenttweaker:elevator>,"Roughly accurate reproduction of one of the most advanced machines — if it can be called a machine — ever created by the civilization that once inhabited The End. In its current state it is pretty much useless, but that does not mean that it is worthless...");
JEI.addDescription(<advancedliftingmethods:ultimate_ender_elevator>,"At the peak of their technological advancement, the now warped inhabitants of The End manipulated space so easily that they did not require to use their inhate abilities. While in a column of two or more Ender Elevators, jump to teleport to the one above or crouch to teleport to the one below.");
JEI.addDescription(<dungeontactics:fan_block>,"Pushes §lall entities and items§r, extinguishes fires, and blows away dust. Gives a stronger push if there is another fan behind. Because it has a less controlled wind flow than that of a fan elevator, it §lcannot make air flow through chutes.");
JEI.addDescription(<dungeontactics:flamer_block>,"Deals fire damage relative to distance to entities within range. Can light fires, heat furnaces, brewing stands, and cauldrons, and ignite explosives.");
JEI.addDescription(<advancedliftingmethods:blowing_elevator>,"Thanks to reverse-flow filter logic from stone pressure plates, it pushes only entities. Use the blowing elevator along with chutes to make chute elevators.");

JEI.addDescription(<malisisdoors:garage_door>, "Apply a redstone signal to lift the gate. All connected gates move as one block.");
JEI.addDescription(<malisisdoors:jail_door>, "Apply a redstone signal to open and close.");

/* Horse Carts */
JEI.addDescription(<astikorcarts:cargocart>, "When attached to a horse, supply carts are an efficient way to transport both items and players. It has a double chest worth of capacity; one person can ride on the back of it. Be careful to not get stuck on thin trees or obstacles, as it can detach from a horse and leave your stuff stranded!");
JEI.addDescription(<astikorcarts:mobcart>, "The livestock cart can carry up to two animals on it. Attach it to a horse to move your farm animals place to place, or use it to scoop up animals to start a farm.");
JEI.addDescription(<astikorcarts:plowcart>, "Horse plows are the most efficient way to work the land. When used with tools like shovels or hoes, it can turn a large area into farmland, or make a nice path to walk on that gives a slight speed boost.");

/* Nyx Stars and Meteors */
JEI.addDescription(<nyx:fallen_star>,"A piece of the heavens lies inside fallen stars. These will rarely fall from the sky, but are more common during a star shower.");
JEI.addDescription(<nyx:meteor_shard>, "Obtained by breaking meteoric rock found from meteors.");
JEI.addDescription(<nyx:meteor_rock>, "Found from meteors scattered across the world.");
JEI.addDescription(<nyx:unrefined_crystal>, "Obtained by breaking gleaning meteor clusters.");
JEI.addDescription(<nyx:gleaning_meteor_rock>, "Found from meteors that spawned during harvest moons.");


/* Hearts */
JEI.addDescription(<contenttweaker:heartofthefallen>,"The beating of this heart never stops. If you listen closely, you can hear faint cries of pain and sorrow echoing within.");
JEI.addDescription(<contenttweaker:heavensheart>,"Beating with the force of blessed fury from the heavens, this heart flows with a burning radiance and the searing power to cast away evil.");
JEI.addDescription(<quark:diamond_heart>,"A rare heart of living mineral ripped from the core of the world and restored to life with magic.");


/* Stat Modifiers (Enchanting, Reforging) */
JEI.addDescription(<quark:ancient_tome>,"Filled with arcane secrets from a long-dead civilization. Combine an Ancient Tome and a matching enchanted book in an anvil to increase the enchantment one level higher than its normal maximum level.");
JEI.addDescription(<qualitytools:reforging_station>,"Placing a bauble in the Reforging Station along with a vis sliver will change the bauble's quality.");
JEI.addDescription(<minecraft:enchanting_table>,"Can be upgraded with an Enchanting Table Upgrade. Creating a block costs XP. This XP cost increases by 1 for every 3 blocks that you add. Put them in the grid to apply them. Don't get greedy!");
JEI.addDescription(<aether_legacy:enchanter>,"With a generous amount of time and fuel, it can infuse or repair rarer weapons and tools harvesting the power of the Sun. Using electrum instead of ambrosium proves to be much more efficient. A gravitite block underneath the capacitor allows it to infuse energy much quicker.");
JEI.addDescription(<ore:ingotElectrum>,"Normal electrum holds little value when compared to Aetherial Electrum. Probably discovered by the valkyries, the value of this material is far greater than the sum of its parts.");


/* Storage */
JEI.addDescription(<netherchest:nether_chest>,"When items are stored in a Nether Chest, their normal stack size limit is multiplied by 8, due to the way the Nether compresses space by a factor of 8. This stack size increase also applies to tools and any other items that aren't normally stackable. Despite their name, trying to open one in the Nether is a very bad idea.");
JEI.addDescription(<pyrotech:compacting_bin>, "A reinforced container that's useful to compact stuff into denser materials or blocks.");
JEI.addDescription(<pyrotech:shelf>,"Displays items much more visibly than a chest ever could.");
JEI.addDescription(<pyrotech:stash>,"When all you need is somewhere to stash items... without requiring an arcane trove. Can hold up to 48 stacks of the same item.");
JEI.addDescription(<bundles:bundle:*>,"The all-in-one inventory declutterer, bundles can hold up to 128 different items, all in one inventory slot! Some exceptions apply, such as potions and elixirs taking up 8 items worth of storage, or unstackables taking up 64 items worth. Shift right-click to empty the contents of a bundle into your inventory. Can be dyed like leather armor for color coding storage.");


/* Rats and the Plague */
JEI.addDescription(<rats:treacle>,"Supposedly, syrup aged for at least ten years can help ward off the plague. Unless you were preparing for the plague starting ten years ago, that won't help... unless you can find something to magically age the syrup or spark a strange fermentation reaction.");
JEI.addDescription(<rats:plague_essence>,"Calcified clump of plague energy. The plagues were thought to be sealed away for good, but now this strain, at least, has returned with a vengeance.");
JEI.addDescription(<rats:plague_doctor_mask>,"Protects the wearer from foul smells. The beak has just enough space to stuff a bundle of sweet herbs inside - ideal to distract from the stench of examining plagued or rotting flesh.");
JEI.addDescription(<rats:plague_doctorate>,"Contains vital knowledge for studying and treating plague. Plague doctors are often feared or even shunned within their own communities, due to the nature of their work.");
JEI.addDescription(<rats:rat_breeding_lantern>,"Use of accompanying jukebox and candles entirely optional.");
JEI.addDescription(<rats:plague_scythe>,"Instilled with the corrupting potential to destroy empires.");
JEI.addDescription(<rats:black_death_mask>,"Diseases are perfected through experimentation... what better laboratory than the blood-soaked battlefield?");
JEI.addDescription(<rats:block_of_cheese>,"This cheese has been crammed together roughly. Separating it into edible wedges is impossible, but it can still be used as a way to hoard food for rats... or used as decoration.");
JEI.addDescription(<rats:rattrap>,"Used to lure and kill wild rats. Must be baited with food and reset after each use.");
JEI.addDescription(<rats:rat_cage>,"Used to contain rats for breeding or keeping them out of trouble. Cages can be connected with rat tubes and outfitted with many cage decorations.");
JEI.addDescription(<rats:ratlantean_flame>,"An spiritual remnant of the mutated plague revenants roaming the Beneath. This concentrated substance is particularly bright despite its origin, perhaps a lure or a call for help.");


/* Bees */
JEI.addDescription(<rustic:bee>, "Found by breaking Bumble Bee Nests and Beehives. Placing one in an apiary produces honeycombs and occasionally another bee.");
JEI.addDescription(<rustic:beeswax>, "An efficient, effective, and environmentally friendly fuel source - even better when compressed.");
JEI.addDescription(<rustic:honeycomb>, "Obtained by breaking Bumble Bee Nests and Beehives - also obtained through Apiaries.");
JEI.addDescription(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "honey", Amount: 1000}}), "If you have obtained this item, DO NOT place it down; it cannot be picked back up.");
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000}), "If you have obtained this item, DO NOT place it down; it cannot be picked back up.");
JEI.addDescription(<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "honey", Amount: 1000}}), "If you have obtained this item, DO NOT place it down; it cannot be picked back up.");
JEI.addDescription(<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "honey", Amount: 1000}}), "If you have obtained this item, DO NOT place it down; it cannot be picked back up.");
JEI.addDescription(<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "honey", Amount: 1000}}), "If you have obtained this item, DO NOT place it down; it cannot be picked back up.");
JEI.addDescription(<rustic:apiary>, "Place bees inside to produce honeycombs! The apiary also boosts crops around it in a cross shape - 4 blocks horizontally in each direction, as well as 1 block in each vertical direction.");


/* Relics */
JEI.addDescription(<msmlegacy:relic_aqueous>, "Relic idea by DonMartn. Thanks for becoming a Dragonsteel supporter on our Patreon!");
JEI.addDescription(<msmlegacy:relic_candy>, "Relic idea by Just A BLU Toon. Thanks for becoming a Dragonsteel supporter on our Patreon!");


/* Lore */
val steelPlate = <betterwithmods:material:51>;

JEI.addDescription(<netherex:ghast_queen_tear>,"They say that every Ghast Queen weeps for their beloved in another dimension. Drop the tears into a 2x2 pool of water surrounded by flowers on top of grass to open the portal. DEV NOTE: Ghast Queen is currently disabled, so we provided a temporary recipe so you may still enter the Twilight Forest.");
JEI.addDescription(steelPlate,"Are they still there? Is there any trace of what remains? Wide dead eyes like exorite, behold.");
JEI.addDescription(<minecraft:rotten_flesh>,"...and they will rise only to seek the surface again as each night falls...");
JEI.addDescription(<minecraft:rotten_flesh>,"Also known as RotN Flesh.");
JEI.addDescription(<betternether:pig_statue_01>,"Carved in the likeness of the Pigfolk. The inscriptions around the rim of the brazier are carved in unfamiliar languages... all except for one. You can make out the words 'VARKAAL...', 'LIFE FROM LIGHT...', and 'DUST...'");
////// JEI.addDescription(<minecraft:clay_ball>,"Such a malleable material, could they see us the same in the Void?"); -> should be put on a more fitting item
JEI.addDescription(<quark:soul_powder>,"Trapped somewhere within these cursed ashes are the memories of lost souls. Even in this state, they still seek out the dreaded sites of their deaths. Perhaps finding such a place would grant them peace.");
JEI.addDescription(<quark:soul_bead>,"Warped bead formed from the cursed core of a wraith. Ingesting it releases the trapped spirits within, at the cost of alerting all manner of dreadful creatures attracted to the use of rare magic.");
JEI.addDescription(<villagenames:codex>,"The codex was an ancient index of information used long time ago by advanced civilizations. Using it while holding a book in the off-hand will register data of the structure its holder is inside.");
JEI.addDescription(<contenttweaker:shard_of_night>,"Imbued with the essence of the night. Can be obtained from the Harvester.");
JEI.addDescription(<contenttweaker:volatile_core>,"The turbulent essence of an extraterrestrial being. Contains the unstable powder used to concentrate and refine meteorite.");
JEI.addDescription(<contenttweaker:ardicite>,"A naturally occurring form of pure hellfire that can host Onyx formations. It is a fiery material that can be found in the Nether in pockets of flammable sulfur.");
JEI.addDescription(<contenttweaker:ofuda>,"An old sheet of paper with indecipherable writing on it. Often found hanging in places believed to have been highly dangerous or cursed, these were likely used as some sort of charm to ward off danger or ailment. Whoever made these is probably no longer around; these ofuda were probably a last ditch attempt at saving themselves from disaster... or a warning for whoever may stumble upon them in the future. It faintly glows by unknown methods.");
JEI.addDescription(<betterwithaddons:ancestry_bottle>,"Spirits extracted from souls; little remains of the original entity. Keep a bottle in your inventory when killing paranormal undead to snatch the spirit before it returns to the spiritual realm.");
JEI.addDescription(<iceandfire:fire_lily>,"An uncommon sight in the overworld, dragon lilies can be found at extremities corresponding to their name; ice lilies in freezing cold places, and fire lilies in scorching hot regions. These flowers were once a favored treat of the fearsome and mystical dragon; however, the beasts have not been seen in the overworld for eons...");
JEI.addDescription(<iceandfire:frost_lily>,"An uncommon sight in the overworld, dragon lilies can be found at extremities corresponding to their name; ice lilies in freezing cold places, and fire lilies in scorching hot regions. These flowers were once a favored treat of the fearsome and mystical dragon; however, the beasts have not been seen in the overworld for eons...");
JEI.addDescription(<biomesoplenty:terrestrial_artifact>, "A strange, glimmering petal-like crimson gem. Some seem to be preserved in good condition inside the Mysterious Lodestone in freezing biomes.");

/* Miscellaneous (and I mean TRUE miscellaneous) */
val arcaneBarrier = <dimstack:bedrock:0>;
val arcanePortal = <dimstack:portal>;
val dummy_fire = <contenttweaker:fire_block>;
val lodestone = <dungeontactics:mithril_block>;

JEI.addDescription(arcanePortal,"Getting past these will take you to places...");
JEI.addDescription(arcaneBarrier,"Getting past these will take you to dark places...");
JEI.addDescription(dummy_fire,"Fire! Once thought to be the case, there is now no certainty that humans were the first civilization to conquer this force of nature, but they are still just as good making the most out of it as ever. Ignite a flame using a hand drill, a flint and steel, a fire charge... or more obscure methods. More often than not, fire is best used in controlled environments, like torches, campfires and furnaces.");
JEI.addDescription(lodestone, "Ancient stones with peculiar properties found in freezing parts of the world. Breaking one grants a strong magnetic pull; they can also contain Stillborn Crimson Petals. How did those get there?");
JEI.addDescription(<contenttweaker:scaffolding>, "A rickety building material thrown together by monsters who are smarter than they seem. Easily cleared away. Breaks down over time.");
JEI.addDescription(<animania:raw_prime_bacon>, "Shut the fuck up. I mean this when I say it. Y'all might think it's weird until you feel the raw bacon slime down your throat and you experience bliss. It's not even dangerous, almost all 'raw bacon' that you can buy has already been smoked and sanitized. Shut the fuck up. Literally. Y'all will never know what it's like to feel good because you're always putting people down. Seriously. Shut the fuck up 'is this real' yes it's real. You guys just hate to see whenever someone else is winning. I bet that you guys like your bacon fucking crispy, no pleasurable texture to it at all when you bite into it. Y'know what, that can be your body if you keep on talking about this. I'll cook you up since you guys love cooked shit so much, and eat you, and complain that it's overcooked. I bet you guys haven't had a good slice of bacon in your life. Hell, I bet y'all haven't ever had good food in the first place. Fuck you all, I'm literally happier than any of you and you're all just pissed because you can't be like me. Fuck off, losers.");
JEI.addDescription(<atop:amber_sword>, "Deep in the human unconscious is a pervasive need for a logical universe that makes sense, But the real universe is always one step beyond logic.");
JEI.addDescription(<contenttweaker:slime_nesting>, "Lime slimes proliferate in droves in the Overworld's grasslands when left unchecked. A slime nesting is the only spot on which lime and watermelon slimes can appear; getting rid of it will get rid of them... or it could be used to redirect their population.");
#JEI.addDescription(<netherex:blue_fire>, "An unnatural blue flame emits a freezing cold sensation. Unlike regular fire, it cannot be put out by water. Most commonly found high in the Aether in its frozen regions.");
#JEI.addDescription(<endreborn:end_fire>, "A supernatural flame that defies logic. It does not even naturally occur, seeming to be some arcane invention of the Enderfolk; their secrets remain a mystery...");
#JEI.addDescription(<betterwithmods:stoked_flame>, "A superheated flame only producible by stoking the flame of a hibachi, powered by hellfire. When combined with certain containers such as a cooking cauldron or crucible, it allows you to reach extreme temperatures that are necessary for certain creations. Take care when using it; some recipes may not play with the superheated temperatures too nicely...");
#JEI.addDescription(<biomesoplenty:blue_fire>, "An unusual flame found within the Nether; rather than burning, it causes uncontrollable movements. Can be picked up with a Mason Jar.");
#JEI.addDescription(<biomesoplenty:jar_filled:1>, "Obtained by picking up Cursed Fire with a Mason Jar. Can be put elsewhere.");


/* Runes and Magic */
JEI.addDescription(<quark:rune:*>, "An aesthetic rune used to color items. Combine with an enchanted item in an iron anvil to change the item's glint color.");

JEI.addDescription(<dungeontactics:magic_scroll>,"Wands contain potent magic, ready to be released on a mage's command. A magical powder is required to power the wand. Scholars can find more knowledge in the 'Magic' section of the guidebook.");

JEI.addDescription(<dungeontactics:magic_powder>, "Powder containing magic obtained from various sources. This magical material is needed to cast powerful spells from wands.");

JEI.addDescription(<arcaneworld:ritual_table>, "The ritual table is an arcane workstation that can perform magic traditional crafting cannot. Many possibilities exist when gathering the ingredients for a ritual; empowerment of an item with concentrated rune magic, summoning of certain creatures, and even wild changes to the environment...");

#Runes
//JEI.addDescription(<ore:runeItem>,"Runes are symbols carved into stones and imbued with aspects of nature that grant them a specific and strong magic affinity for an element. Their primary use is to act as a catalyst for other magical items or creating single-use orbs.");
JEI.addItem(<contenttweaker:blank_rune>);
JEI.addDescription(<contenttweaker:blank_rune>,"Stone imbued with magic powder. Used as a base for all runes.");
JEI.addItem(<contenttweaker:disint_rune>);
JEI.addDescription(<contenttweaker:disint_rune>,"Craft with magical items to disintegrate them into vis.");

JEI.addItem(<contenttweaker:sol_rune>);
JEI.addItem(<contenttweaker:luna_rune>);
JEI.addItem(<contenttweaker:air_rune>);
JEI.addItem(<contenttweaker:fire_rune>);
JEI.addItem(<contenttweaker:earth_rune>);
JEI.addItem(<contenttweaker:water_rune>);
JEI.addItem(<contenttweaker:balance_rune>);
JEI.addItem(<contenttweaker:chaos_rune>);
JEI.addItem(<contenttweaker:creation_rune>);
JEI.addItem(<contenttweaker:death_rune>);
JEI.addItem(<contenttweaker:energy_rune>);
JEI.addItem(<contenttweaker:illusion_rune>);
JEI.addItem(<contenttweaker:knowledge_rune>);
JEI.addItem(<contenttweaker:life_rune>);
JEI.addItem(<contenttweaker:mind_rune>);
JEI.addItem(<contenttweaker:nature_rune>);
JEI.addItem(<contenttweaker:order_rune>);
JEI.addItem(<contenttweaker:poison_rune>);
JEI.addItem(<contenttweaker:soul_rune>);
JEI.addItem(<contenttweaker:strength_rune>);
JEI.addItem(<contenttweaker:trans_rune>);
JEI.addItem(<contenttweaker:holding_rune>);
JEI.addItem(<contenttweaker:nether_rune>);
JEI.addItem(<contenttweaker:plague_rune>);
// JEI.addItem(<contenttweaker:time_rune>);
JEI.hide(<contenttweaker:time_rune>);
JEI.addItem(<contenttweaker:aether_rune>);
JEI.addItem(<contenttweaker:arcane_rune>);
JEI.addItem(<contenttweaker:draconic_rune>);
JEI.addItem(<contenttweaker:fae_rune>);
#Scepters
JEI.addDescription(<iceandfire:lich_staff>,"Summons spirits that seek out foes, draining their life. Can be recharged using spirits in the Ancestral Infuser.");
JEI.addDescription(<aether_legacy:cloud_staff>,"Summons a pair of cloud sentries which will shoot ice balls at your targets. Can be recharged using spirits in the Ancestral Infuser.");
JEI.addDescription(<defiledlands:tears_flame>,"Charge to shoot 5 fire balls at your target. Can be recharged using spirits in the Ancestral Infuser.");

/* Hit with Axe */
JEI.addDescription(<hitwithaxe:debarked_magic>, "Hit a magic log with an axe.");

/* Yeasts */
JEI.addDescription(<growthcraft_cellar:yeast>, "A yeast which appears to be basic in nature. It can be cultivated in culture jars with any fermentable liquid in any biome, albeit at a lower rate in biomes where other yeasts might flourish. Placing this in the output slot of a culture jar will ensure only brewer's yeast is produced, irrespective of the biome.");
JEI.addDescription(<growthcraft_cellar:yeast:1>, "A yeast which appears to be capable of making a lovely lager beer. It can be cultivated in culture jars with any fermentable liquid in cold biomes, like a Taiga. Placing this in the output slot of a culture jar will ensure only lager yeast is produced, irrespective of the biome.");
JEI.addDescription(<growthcraft_cellar:yeast:2>, "A yeast which appears to be capable of making a wonderful port wine. It can sometimes be obtained when harvesting grapes. Placing this in the output slot of a culture jar will ensure only bayanus yeast is produced, irrespective of the biome.");
JEI.addDescription(<growthcraft_cellar:yeast:3>, "A yeast which appears to have mystical properties. It can be cultivated in culture jars with any fermentable liquid in magical biomes, like the Mystical Grove. Placing this in the output slot of a culture jar will ensure only ethereal yeast is produced, irrespective of the biome.");
JEI.addDescription(<growthcraft_cellar:yeast:4>, "A yeast which appears to be quite mycelial. It can be cultivated in culture jars with any fermentable liquid in mushroom biomes, like the Mushroom Islands. Placing this in the output slot of a culture jar will ensure only origin yeast is produced, irrespective of the biome.");
