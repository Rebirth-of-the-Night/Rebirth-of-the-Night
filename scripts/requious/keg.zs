import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import crafttweaker.world.IWorld;

var keg = <assembly:keg>;
var arrowRight = SlotVisual.create(2, 1).addPart("contenttweaker:textures/gui/kegui.png", 10, 4).addDirectional("contenttweaker:textures/gui/kegui.png", 12, 4,mods.requious.GaugeDirection.right(),false);
keg.setDecorationSlot(0,0, SlotVisual.create(9,7).addPart("contenttweaker:textures/gui/kegui.png",0,0));

static keginput1 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",1,1);
static keginput2 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",2,1);
static keginput3 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",1,2);
static keginput4 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",2,2);
static kegcatalyst as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",3,1);
static kegfluid as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",3,2);
static kegstock as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",6,1);
static kegcontainer as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",5,3);
static kegcontaineroutput as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",6,4);
static kegoutput as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",7,3);
static kegblank as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",10,10);

keg.setTextSlot(3,0).setVisual(mods.requious.SlotVisual.create(0,0)).setRenderText("Keg");


keg.setItemSlot(1, 1, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(keginput1)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(2, 1, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(keginput2)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(1, 2, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(keginput3)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(2, 2, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(keginput4)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(3, 1, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(kegcatalyst)
       .setGroup("catalyst");
keg.setFluidSlot(3, 2, ComponentFace.horizontal(), 8000)
       .setAccess(true, false)
       .setBackground(kegfluid)
       .allowBucket(true, true)
       .setGroup("input_fluid");
keg.setDurationSlot(4, 1)
       .setVisual(arrowRight)
       .setGroup("input");
    




keg.setItemSlot(6, 1, ComponentFace.down(), 256)
       .setAccess(false, false)
       .setBackground(kegstock)
       .setGroup("stock")
       .noDrop()
       .setHandAccess(false, false);
keg.setItemSlot(5, 3, ComponentFace.front(), 256)
       .setAccess(true, false)
       .setBackground(kegcontainer)
       .setGroup("container");
keg.setItemSlot(6, 4, ComponentFace.down(), 256)
       .setAccess(false, true)
       .setBackground(kegcontaineroutput)
       .setGroup("container_output");
keg.setItemSlot(7, 3, ComponentFace.down(), 256)
       .setAccess(false, true)
       .setBackground(kegoutput)
       .setGroup("output");
keg.setItemSlot(8, 0, ComponentFace.down(), 1)
       .setAccess(false, false)
       .setBackground(kegblank)
       .setGroup("info")
       .noDrop()
       .setHandAccess(false, false);
//
//RECIPES
//
var info = AssemblyRecipe.create(function(container){
    container.addItemOutput("info",<contenttweaker:keg_info>);
});
keg.addRecipe(info);
//
//
//
var beer = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_beer>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <ore:listAllgrain>)
.requireItem("input", <growthcraft_hops:hops>)
.requireItem("input", <ore:listAllsugar>)
.requireItem("input", <ore:yeastBrewers>)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(beer);
keg.addRecipe(beer);

var tankard_beer = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_beer>);})
.requireItem("stock", <contenttweaker:tankard_beer>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_beer);
//
//
//
var cider = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_cider>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <ore:yeastBrewers>)
.requireFluid("input_fluid", <liquid:fluid_booze_apple_juice>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(cider);
keg.addRecipe(cider);

var tankard_cider = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_cider>);})
.requireItem("stock", <contenttweaker:tankard_cider>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_cider);
//
//
//
var red_wine = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_red_wine>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <ore:yeastBrewers>)
.requireFluid("input_fluid", <liquid:fluid_booze_red_juice>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(red_wine);
keg.addRecipe(red_wine);

var tankard_red_wine = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_red_wine>);})
.requireItem("stock", <contenttweaker:tankard_red_wine>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_red_wine);
//
//
//
var sake = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_sake>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <contenttweaker:koji_mold>)
.requireFluid("input_fluid", <liquid:fluid_booze_sake_water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(sake);
keg.addRecipe(sake);

var tankard_sake = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_sake>);})
.requireItem("stock", <contenttweaker:tankard_sake>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_sake);
//
//
//
var silken_nectar = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_silken_nectar>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("catalyst", <ore:yeastOrigin>)
.requireFluid("input_fluid", <liquid:fluid_booze_apple_juice>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(silken_nectar);
keg.addRecipe(silken_nectar);

var tankard_silken_nectar = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_silken_nectar>);})
.requireItem("stock", <contenttweaker:tankard_silken_nectar>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_silken_nectar);
//
//
//
var ambrosia_mocktail = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_ambrosia_mocktail>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("catalyst", <ore:yeastOrigin>)
.requireItem("input", <bblsom:wildflowers_north_kraired>)
.requireItem("input", <hitwithaxe:bark:41>)
.requireFluid("input_fluid", <liquid:hot_spring_water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(ambrosia_mocktail);
keg.addRecipe(ambrosia_mocktail);

var tankard_ambrosia_mocktail = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_ambrosia_mocktail>);})
.requireItem("stock", <contenttweaker:tankard_ambrosia_mocktail>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_ambrosia_mocktail);
//
//
//
var mythril_energy = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_mythril_energy>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));
container.addItemOutput("container_output",<biomesoplenty:jar_empty>);})
.requireItem("catalyst", <ore:yeastEthereal>)
.requireItem("input", <biomesoplenty:gem:5>)
.requireItem("input", <biomesoplenty:jar_filled:1>)
.requireItem("input", <contenttweaker:magic_blend>)
.requireFluid("input_fluid", <liquid:residual_mythril>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(mythril_energy);
keg.addRecipe(mythril_energy);

var tankard_mythril_energy = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_mythril_energy>);})
.requireItem("stock", <contenttweaker:tankard_mythril_energy>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_mythril_energy);
//
//
//
var rum = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_rum>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <ore:yeastBrewers>)
.requireItem("input", <minecraft:reeds>)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(rum);
keg.addRecipe(rum);

var tankard_rum = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_rum>);})
.requireItem("stock", <contenttweaker:tankard_rum>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_rum);
//
//
//
var ognovoda = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_ognovoda>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <ore:yeastBrewers>)
.requireItem("input", <minecraft:potato>)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(ognovoda);
keg.addRecipe(ognovoda);

var tankard_ognovoda = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_ognovoda>);})
.requireItem("stock", <contenttweaker:tankard_ognovoda>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_ognovoda);
//
//
//
var mead = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_mead>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <ore:yeastBrewers>)
.requireFluid("input_fluid", <liquid:fluid_honey>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(mead);
keg.addRecipe(mead);

var tankard_mead = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_mead>);})
.requireItem("stock", <contenttweaker:tankard_mead>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_mead);
//
//
//
var dragon_daquiri = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_dragon_daquiri>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));
container.addItemOutput("container_output",<contenttweaker:tankard>);})
.requireItem("input", <contenttweaker:tankard_rum>)
.requireItem("input", <harvestcraft:dragonfruititem>)
.requireItem("input", <harvestcraft:limeitem>)
.requireItem("input", <ore:listAllsugar>)
.requireDuration("input", 60);
keg.addJEIRecipe(dragon_daquiri);
keg.addRecipe(dragon_daquiri);

var tankard_dragon_daquiri = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_dragon_daquiri>);})
.requireItem("stock", <contenttweaker:tankard_dragon_daquiri>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_dragon_daquiri);
//
//
//
var ironberry_stout = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_ironberry_stout>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));
container.addItemOutput("container_output",<contenttweaker:tankard>*2);})
.requireItem("input", <contenttweaker:tankard_beer>*2)
.requireItem("input", <ore:yeastBrewers>)
.requireItem("input", <rustic:ironberries>)
.requireDuration("input", 60);
keg.addJEIRecipe(ironberry_stout);
keg.addRecipe(ironberry_stout);

var tankard_ironberry_stout = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_ironberry_stout>);})
.requireItem("stock", <contenttweaker:tankard_ironberry_stout>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_ironberry_stout);
//
//
//
var twinned_spirit = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_twinned_spirit>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("catalyst", <ore:yeastEthereal>)
.requireItem("input", <betternether:black_apple>)
.requireItem("input", <aether_legacy:white_apple>)
.requireItem("input", <rustic:vanta_lily>)
.requireItem("input", <betterwithaddons:ancestry_bottle>)
.requireFluid("input_fluid", <liquid:lunar_water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(twinned_spirit);
keg.addRecipe(twinned_spirit);

var tankard_twinned_spirit = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_twinned_spirit>);})
.requireItem("stock", <contenttweaker:tankard_twinned_spirit>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_twinned_spirit);
//
//
//
var billowing_tonic = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_billowing_tonic>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));
container.addItemOutput("container_output",<contenttweaker:tankard>);})
.requireItem("catalyst", <ore:yeastEthereal>)
.requireItem("input", <rustic:cloudsbluff>)
.requireItem("input", <aether_legacy:white_apple>)
.requireFluid("input_fluid", <liquid:hot_spring_water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(billowing_tonic);
keg.addRecipe(billowing_tonic);

var tankard_billowing_tonic = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_billowing_tonic>);})
.requireItem("stock", <contenttweaker:tankard_billowing_tonic>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_billowing_tonic);
//
//
//
var enchanted_mead = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_enchanted_mead>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("catalyst", <ore:yeastEthereal>)
.requireItem("input", <aether_legacy:enchanted_blueberry>)
.requireItem("input", <aether_legacy:aechor_petal>)
.requireItem("input", <aether_legacy:golden_amber>)
.requireItem("input", <aether_legacy:blue_berry>)
.requireFluid("input_fluid", <liquid:fluid_honey>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(enchanted_mead);
keg.addRecipe(enchanted_mead);

var tankard_enchanted_mead = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_enchanted_mead>);})
.requireItem("stock", <contenttweaker:tankard_enchanted_mead>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(enchanted_mead);
//
//
//
var blastem_brandy = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_blastem_brandy>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));
container.addItemOutput("container_output",<contenttweaker:tankard>*2);})
.requireItem("input", <contenttweaker:tankard_red_wine>*2)
.requireItem("input", <defiledlands:blastem_fruit_blazing>)
.requireItem("input", <defiledlands:foul_candy>)
.requireItem("input", <defiledlands:defilement_powder>)
.requireDuration("input", 60);
keg.addJEIRecipe(blastem_brandy);
keg.addRecipe(blastem_brandy);

var tankard_blastem_brandy = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_blastem_brandy>);})
.requireItem("stock", <contenttweaker:tankard_blastem_brandy>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_blastem_brandy);
//
//
//
var rose_tequila = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_rose_tequila>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input", <minecraft:cactus>)
.requireItem("input", <exsartagine:yeast>)
.requireItem("input", <betterwithaddons:material:3>)
.requireItem("input", <betterwithaddons:material:1>)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(rose_tequila);
keg.addRecipe(rose_tequila);

var tankard_rose_tequila = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_rose_tequila>);})
.requireItem("stock", <contenttweaker:tankard_rose_tequila>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(rose_tequila);
//
//
//
var sanguine_remedy = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_sanguine_remedy>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));
container.addItemOutput("container_output",<contenttweaker:tankard>*2);})
.requireItem("input", <contenttweaker:tankard_rose_tequila>*2)
.requireItem("input", <dungeontactics:flower_sanguine>)
.requireFluid("input_fluid", <liquid:blood>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(sanguine_remedy);
keg.addRecipe(sanguine_remedy);

var tankard_sanguine_remedy = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_sanguine_remedy>);})
.requireItem("stock", <contenttweaker:tankard_sanguine_remedy>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_sanguine_remedy);
//
//
//
var tzarma = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_tzarma>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input",<contenttweaker:godrage_eye>)
.requireItem("input",<ore:yeastBrewers>)
.requireItem("input",<ore:agedMold>)
.requireItem("input", <betternether:black_apple>)
.requireFluid("input_fluid", <liquid:blood>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(tzarma);
keg.addRecipe(tzarma);

var tankard_tzarma = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_tzarma>);})
.requireItem("stock", <contenttweaker:tankard_tzarma>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_tzarma);
//
//
//
var melon_chareau = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_melon_chareau>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("catalyst",<ore:yeastEthereal>)
.requireItem("input",<minecraft:speckled_melon>)
.requireItem("input",<rustic:aloe_vera>)
.requireItem("input",<ore:dustSilver>)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(melon_chareau);
keg.addRecipe(melon_chareau);

var tankard_melon_chareau = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_melon_chareau>);})
.requireItem("stock", <contenttweaker:tankard_melon_chareau>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_melon_chareau);
//
//
//
var blue_ribbon = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<contenttweaker:tankard_blue_ribbon>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));})
.requireItem("input",<contenttweaker:giant_blue_flower_petal>)
.requireItem("input",<biomesoplenty:berries>)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(blue_ribbon);
keg.addRecipe(blue_ribbon);

var tankard_blue_ribbon = AssemblyRecipe.create(function(container){container.addItemOutput("output",<contenttweaker:tankard_blue_ribbon>);})
.requireItem("stock", <contenttweaker:tankard_blue_ribbon>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_blue_ribbon);
//
//
//
static jeiinput1 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",3,8);
static jeiinput2 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",4,8);
static jeiinput3 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",3,9);
static jeiinput4 as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",4,9);
static jeicatalyst as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",5,8);
static jeifluid as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",5,9);
static jeistock as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",4,11);
static jeiblank as SlotVisual = SlotVisual.createSimple("contenttweaker:textures/gui/kegui.png",10,10);

var jeiArrowRight = SlotVisual.create(1, 2).addPart("contenttweaker:textures/gui/kegui.png", 10, 0).addDirectional("contenttweaker:textures/gui/kegui.png", 11, 0,mods.requious.GaugeDirection.right(),false);
var jeiArrowLeft = SlotVisual.create(1, 2).addPart("contenttweaker:textures/gui/kegui.png", 10, 2).addDirectional("contenttweaker:textures/gui/kegui.png", 11, 2,mods.requious.GaugeDirection.left(),false);
var jeiFluidJank = SlotVisual.create(1, 3).addPart("contenttweaker:textures/gui/kegui.png", 5, 7);
keg.setJEIDecoration(0,0,"input", SlotVisual.create(5,6).addPart("contenttweaker:textures/gui/kegui.png",2,7));
keg.setJEIDecoration(4,5,"input",jeiblank);

keg.setJEIItemSlot(1,1,"input",jeiinput1);
keg.setJEIItemSlot(2,1,"input",jeiinput2);
keg.setJEIItemSlot(1,2,"input",jeiinput3);
keg.setJEIItemSlot(2,2,"input",jeiinput4);
keg.setJEIItemSlot(3,1,"catalyst",jeicatalyst);
keg.setJEIFluidSlot(3,2,"input_fluid");
keg.setJEIDecoration(3,0,"input",jeiFluidJank);
keg.setJEIItemSlot(2,4,"stock",jeistock);
keg.setJEIDurationSlot(1,3,"input", jeiArrowRight);
keg.setJEIDurationSlot(3,3,"input", jeiArrowLeft);
keg.setJEIDurationSlot(1,4,"input", jeiblank);
keg.setJEIDurationSlot(3,4,"input", jeiblank);