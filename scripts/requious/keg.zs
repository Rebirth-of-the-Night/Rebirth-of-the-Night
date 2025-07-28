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


keg.setItemSlot(1, 1, ComponentFace.up(), 64)
       .setAccess(true, false)
       .setBackground(keginput1)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(2, 1, ComponentFace.up(), 64)
       .setAccess(true, false)
       .setBackground(keginput2)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(1, 2, ComponentFace.up(), 64)
       .setAccess(true, false)
       .setBackground(keginput3)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(2, 2, ComponentFace.up(), 64)
       .setAccess(true, false)
       .setBackground(keginput4)
       .setGroup("input")
       .setGroup("item");
keg.setItemSlot(3, 1, ComponentFace.up(), 64)
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
    




keg.setItemSlot(6, 1, ComponentFace.down(), 64)
       .setAccess(false, false)
       .setBackground(kegstock)
       .setGroup("stock")
       .noDrop()
       .setHandAccess(false, false);
keg.setItemSlot(5, 3, ComponentFace.front(), 64)
       .setAccess(true, false)
       .setBackground(kegcontainer)
       .setGroup("container");
keg.setItemSlot(6, 4, ComponentFace.down(), 64)
       .setAccess(false, true)
       .setBackground(kegcontaineroutput)
       .setGroup("container_output");
keg.setItemSlot(7, 3, ComponentFace.down(), 64)
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
var info = AssemblyRecipe.create(function(container){
    container.addItemOutput("info",<contenttweaker:keg_info>);
});
keg.addRecipe(info);
//
var beer = AssemblyRecipe.create(function(container){
    container.addItemOutput("stock",<contenttweaker:tankard_beer>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}}));
})
.requireItem("input", <minecraft:wheat>*2)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(beer);
keg.addRecipe(beer);
var tankard_beer = AssemblyRecipe.create(function(container){
    container.addItemOutput("output",<contenttweaker:tankard_beer>);
})
.requireItem("stock", <contenttweaker:tankard_beer>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_beer);
//
var ironberry_stout = AssemblyRecipe.create(function(container){
    container.addItemOutput("stock",<contenttweaker:tankard_ironberry_stout>);
    container.addItemOutput("container_output",<contenttweaker:tankard>*2);
})
.requireItem("input", <contenttweaker:tankard_beer>*2)
.requireDuration("input", 60);
keg.addJEIRecipe(ironberry_stout);
keg.addRecipe(ironberry_stout);
var tankard_ironberry_stout = AssemblyRecipe.create(function(container){
    container.addItemOutput("output",<contenttweaker:tankard_ironberry_stout>);
})
.requireItem("stock", <contenttweaker:tankard_ironberry_stout>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_ironberry_stout);
//

//
var cider = AssemblyRecipe.create(function(container){
    container.addItemOutput("stock",<contenttweaker:tankard_cider>.withTag({display: {Lore: ["Extract with Bottle or Tankard"]}})*2);
})
.requireItem("input", <minecraft:apple>, 1, 64)
.requireFluid("input_fluid", <liquid:water>*250)
.requireDuration("input", 60);
keg.addJEIRecipe(cider);
keg.addRecipe(cider);
var tankard_cider = AssemblyRecipe.create(function(container){
    container.addItemOutput("output",<contenttweaker:tankard_cider>);
})
.requireItem("stock", <contenttweaker:tankard_cider>)
.requireItem("container", <contenttweaker:tankard>);
keg.addRecipe(tankard_beer);
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