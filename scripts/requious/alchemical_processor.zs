import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import crafttweaker.world.IWorld;

var alch_proc = <assembly:alchemical_processor>;
var arrowRight = SlotVisual.create(2, 1).addPart("requious:textures/gui/alchemical_processor.png", 10, 4).addDirectional("requious:textures/gui/alchemical_processor.png", 12, 4,mods.requious.GaugeDirection.right(),false);
alch_proc.setDecorationSlot(0,0, SlotVisual.create(9,7).addPart("requious:textures/gui/alchemical_processor.png",0,0));

static alch_procinput1 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",2,2);
static alch_procinput2 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",3,2);
static alch_procinput3 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",4,2);
static alch_procfluid as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",1,2);
static alch_proccontainer as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",5,3);
static alch_proccontaineroutput as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",6,4);
static alch_procoutput1 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",7,3);
static alch_procoutput2 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",7,3);
static alch_procblank as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",10,10);

alch_proc.setTextSlot(3,0).setVisual(mods.requious.SlotVisual.create(0,0)).setRenderText("Alchemical Processor");


alch_proc.setItemSlot(2, 2, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(alch_procinput1)
       .setGroup("input")
       .setGroup("item");
alch_proc.setItemSlot(3, 2, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(alch_procinput2)
       .setGroup("input")
       .setGroup("item");
alch_proc.setItemSlot(4, 2, ComponentFace.up(), 256)
       .setAccess(true, false)
       .setBackground(alch_procinput3)
       .setGroup("input")
       .setGroup("item");
alch_proc.setFluidSlot(1, 2, ComponentFace.horizontal(), 8000)
       .setAccess(true, false)
       .setBackground(alch_procfluid)
       .allowBucket(true, true)
       .setGroup("input_fluid");
alch_proc.setDurationSlot(4, 1)
       .setVisual(arrowRight)
       .setGroup("input");
    



alch_proc.setItemSlot(6, 2, ComponentFace.down(), 256)
       .setAccess(false, true)
       .setBackground(alch_procoutput1)
       .setGroup("output");
alch_proc.setItemSlot(6, 3, ComponentFace.down(), 256)
       .setAccess(false, true)
       .setBackground(alch_procoutput2)
       .setGroup("output");
alch_proc.setItemSlot(5, 3, ComponentFace.front(), 256)
       .setAccess(true, false)
       .setBackground(alch_proccontainer)
       .setGroup("container");
alch_proc.setItemSlot(6, 4, ComponentFace.down(), 256)
       .setAccess(false, true)
       .setBackground(alch_proccontaineroutput)
       .setGroup("container_output");
	   
alch_proc.setItemSlot(8, 0, ComponentFace.down(), 1)
       .setAccess(false, false)
       .setBackground(alch_procblank)
       .setGroup("info_a")
       .noDrop()
       .setHandAccess(false, false);
alch_proc.setItemSlot(8, 1, ComponentFace.down(), 1)
       .setAccess(false, false)
       .setBackground(alch_procblank)
       .setGroup("info_b")
       .noDrop()
       .setHandAccess(false, false);
alch_proc.setItemSlot(8, 2, ComponentFace.down(), 1)
       .setAccess(false, false)
       .setBackground(alch_procblank)
       .setGroup("info_c")
       .noDrop()
       .setHandAccess(false, false);
//
//RECIPES
//

//
//Liquid tooltips
//
var info_a = AssemblyRecipe.create(function(container){
    container.addFluidOutput("info_a",<liquid:unstable_spiritfire>.withTag({display: {Lore: ["Spiritfire compounds produce chaotic dunamical concoctions"]}}));
});
alch_proc.addRecipe(info_a);
var info_b = AssemblyRecipe.create(function(container){
    container.addFluidOutput("info_b",<liquid:concentrated_bioflow>.withTag({display: {Lore: ["Bioflow compounds produce life altering concoctions"]}}));
});
alch_proc.addRecipe(info_b);
var info_c = AssemblyRecipe.create(function(container){
    container.addFluidOutput("info_c",<liquid:dread_cold>.withTag({display: {Lore: ["Dread Cold compounds produce stagnated concoctions"]}}));
});
alch_proc.addRecipe(info_c);
//
//
//
var test_recipe = AssemblyRecipe.create(function(container){container.addItemOutput("stock",<betterwithmods:bamboo_chime:5>.withTag({display: {Lore: ["Extract with Bottle or bottle"]}}));
container.addItemOutput("container_output",<minecraft:glass_bottle>);})
.requireItem("input", <harvestcraft:jellyfishrawitem>)
.requireItem("input", <minecraft:beef>)
.requireItem("input", <minecraft:mutton>)
.requireDuration("input", 60);
alch_proc.addJEIRecipe(test_recipe);
alch_proc.addRecipe(test_recipe);
//
//
//
static jeiinput1 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",3,8);
static jeiinput2 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",4,8);
static jeiinput3 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",3,9);
static jeiinput4 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",4,9);
static jeicatalyst as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",5,8);
static jeifluid as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",5,9);
static jeistock as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",4,11);
static jeiblank as SlotVisual = SlotVisual.createSimple("requious:textures/gui/alchemical_processor.png",10,10);

var jeiArrowRight = SlotVisual.create(1, 2).addPart("requious:textures/gui/alchemical_processor.png", 10, 0).addDirectional("requious:textures/gui/alchemical_processor.png", 11, 0,mods.requious.GaugeDirection.right(),false);
var jeiArrowLeft = SlotVisual.create(1, 2).addPart("requious:textures/gui/alchemical_processor.png", 10, 2).addDirectional("requious:textures/gui/alchemical_processor.png", 11, 2,mods.requious.GaugeDirection.left(),false);
var jeiFluidJank = SlotVisual.create(1, 3).addPart("requious:textures/gui/alchemical_processor.png", 5, 7);
alch_proc.setJEIDecoration(0,0,"input", SlotVisual.create(5,6).addPart("requious:textures/gui/alchemical_processor.png",2,7));
alch_proc.setJEIDecoration(4,5,"input",jeiblank);

alch_proc.setJEIItemSlot(1,1,"input",jeiinput1);
alch_proc.setJEIItemSlot(2,1,"input",jeiinput2);
alch_proc.setJEIItemSlot(1,2,"input",jeiinput3);
alch_proc.setJEIItemSlot(2,2,"input",jeiinput4);
alch_proc.setJEIFluidSlot(3,2,"input_fluid");
alch_proc.setJEIDecoration(3,0,"input",jeiFluidJank);
alch_proc.setJEIDurationSlot(1,3,"input", jeiArrowRight);
alch_proc.setJEIDurationSlot(3,3,"input", jeiArrowLeft);
alch_proc.setJEIDurationSlot(1,4,"input", jeiblank);
alch_proc.setJEIDurationSlot(3,4,"input", jeiblank);