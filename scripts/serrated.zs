import crafttweaker.block.IBlockState;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.dropt.Dropt;
import mods.pyrotech.GraniteAnvil;
import mods.serrated.CuttingSawOutputBuilder;
import mods.serrated.CuttingSawRecipeBuilder;

// stonecutting products for an underground biomes stone type
zenClass UBStoneProducts {
  val slabItem as IItemDefinition;
  val slabBlock as IBlockState;
  val stairsItem as IItemDefinition;
  val stairsBlock as IBlockState;
  val wallItem as IItemDefinition;
  val wallBlock as IBlockState;

  zenConstructor(slabItem as IItemStack, slabBlock as IBlockState,
                 stairsItem as IItemStack, stairsBlock as IBlockState,
                 wallItem as IItemStack, wallBlock as IBlockState) {
    this.slabItem = slabItem.definition;
    this.slabBlock = slabBlock;
    this.stairsItem = stairsItem.definition;
    this.stairsBlock = stairsBlock;
    this.wallItem = wallItem.definition;
    this.wallBlock = wallBlock;
  }
}

// igneous stone blocks
val igStoneProducts = UBStoneProducts(
  <undergroundbiomes:igneous_stone_halfslab>, <blockstate:undergroundbiomes:igneous_stone_fullslab>,
  <undergroundbiomes:igneous_stone_stairs>, <blockstate:undergroundbiomes:igneous_stone_stairs_north>,
  <undergroundbiomes:igneous_stone_wall>, <blockstate:undergroundbiomes:igneous_stone_wall>);
val igBrickProducts = UBStoneProducts(
  <undergroundbiomes:igneous_brick_halfslab>, <blockstate:undergroundbiomes:igneous_brick_fullslab>,
  <undergroundbiomes:igneous_brick_stairs>, <blockstate:undergroundbiomes:igneous_brick_stairs_north>,
  <undergroundbiomes:igneous_brick_wall>, <blockstate:undergroundbiomes:igneous_brick_wall>);
val igCobbleProducts = UBStoneProducts(
  <undergroundbiomes:igneous_cobble_halfslab>, <blockstate:undergroundbiomes:igneous_cobble_fullslab>,
  <undergroundbiomes:igneous_cobble_stairs>, <blockstate:undergroundbiomes:igneous_cobble_stairs_north>,
  <undergroundbiomes:igneous_cobble_wall>, <blockstate:undergroundbiomes:igneous_cobble_wall>);

// metamorphic stone blocks
val metaStoneProducts = UBStoneProducts(
  <undergroundbiomes:metamorphic_stone_halfslab>, <blockstate:undergroundbiomes:metamorphic_stone_fullslab>,
  <undergroundbiomes:metamorphic_stone_stairs>, <blockstate:undergroundbiomes:metamorphic_stone_stairs_north>,
  <undergroundbiomes:metamorphic_stone_wall>, <blockstate:undergroundbiomes:metamorphic_stone_wall>);
val metaBrickProducts = UBStoneProducts(
  <undergroundbiomes:metamorphic_brick_halfslab>, <blockstate:undergroundbiomes:metamorphic_brick_fullslab>,
  <undergroundbiomes:metamorphic_brick_stairs>, <blockstate:undergroundbiomes:metamorphic_brick_stairs_north>,
  <undergroundbiomes:metamorphic_brick_wall>, <blockstate:undergroundbiomes:metamorphic_brick_wall>);
val metaCobbleProducts = UBStoneProducts(
  <undergroundbiomes:metamorphic_cobble_halfslab>, <blockstate:undergroundbiomes:metamorphic_cobble_fullslab>,
  <undergroundbiomes:metamorphic_cobble_stairs>, <blockstate:undergroundbiomes:metamorphic_cobble_stairs_north>,
  <undergroundbiomes:metamorphic_cobble_wall>, <blockstate:undergroundbiomes:metamorphic_cobble_wall>);

// sedimentary stone blocks
val sediStoneProducts = UBStoneProducts(
  <undergroundbiomes:sedimentary_stone_halfslab>, <blockstate:undergroundbiomes:sedimentary_stone_fullslab>,
  <undergroundbiomes:sedimentary_stone_stairs>, <blockstate:undergroundbiomes:sedimentary_stone_stairs_north>,
  <undergroundbiomes:sedimentary_stone_wall>, <blockstate:undergroundbiomes:sedimentary_stone_wall>);

// stonecutting products for an underground biomes sandstone type
zenClass UBSandstoneProducts {
  val chiseledItem as IItemDefinition;
  val chiseledBlock as IBlockState;
  val smoothItem as IItemDefinition;
  val smoothBlock as IBlockState;

  zenConstructor(chiseledItem as IItemStack, chiseledBlock as IBlockState,
                 smoothItem as IItemStack, smoothBlock as IBlockState) {
    this.chiseledItem = chiseledItem.definition;
    this.chiseledBlock = chiseledBlock;
    this.smoothItem = smoothItem.definition;
    this.smoothBlock = smoothBlock;
  }
}

// igneous sandstone blocks
val igSandstoneProducts = UBSandstoneProducts(
  <undergroundbiomes:igneous_sandstone_chiseled>, <blockstate:undergroundbiomes:igneous_sandstone_chiseled>,
  <undergroundbiomes:igneous_sandstone_smooth>, <blockstate:undergroundbiomes:igneous_sandstone_smooth>);

// metamorphic sandstone blocks
val metaSandstoneProducts = UBSandstoneProducts(
  <undergroundbiomes:metamorphic_sandstone_chiseled>, <blockstate:undergroundbiomes:metamorphic_sandstone_chiseled>,
  <undergroundbiomes:metamorphic_sandstone_smooth>, <blockstate:undergroundbiomes:metamorphic_sandstone_smooth>);

// sedimentary sandstone blocks
val sediSandstoneProducts = UBSandstoneProducts(
  <undergroundbiomes:sedimentary_sandstone_chiseled>, <blockstate:undergroundbiomes:sedimentary_sandstone_chiseled>,
  <undergroundbiomes:sedimentary_sandstone_smooth>, <blockstate:undergroundbiomes:sedimentary_sandstone_smooth>);

// methods in this class are sensitive to the order in which they're called!
// please call them top-down (withStone first, withFoundationRecipe and build last)
zenClass MaterialBuilder {
  static brickDropList = Dropt.list("loose_brick_drops");
  static masonryBrick = <contenttweaker:masonry_brick>;
  static looseStoneBrickBlockItem = <contenttweaker:loose_stone_bricks>;
  static looseStoneBrickBlockState = <blockstate:contenttweaker:loose_stone_bricks>;
  static foundation = <contenttweaker:foundation_micomi>;

  val name as string;
  var stoneItem as IItemStack = null;
  var stoneBlock as IBlockState = null;
  var cutStone as CuttingSawRecipeBuilder = null;
  var cutSmooth as CuttingSawRecipeBuilder = null;
  var brickItem as IItemStack = null;
  var brickBlockItem as IItemStack = null;
  var cutBricks as CuttingSawRecipeBuilder = null;
  var cutRock as CuttingSawRecipeBuilder = null;
  var cutCobble as CuttingSawRecipeBuilder = null;

  zenConstructor(name as string) {
    this.name = name;
  }

  function withStone(stoneItem as IItemStack, stoneBlock as IBlockState) as MaterialBuilder {
    this.stoneItem = stoneItem;
    this.stoneBlock = stoneBlock;
    cutStone = CuttingSawRecipeBuilder.newRecipe(stoneItem, stoneBlock);
    return this;
  }

  function withStoneProducts(slabItem as IItemStack, slabBlock as IBlockState, slabTime as int,
                             stairsItem as IItemStack, stairsBlock as IBlockState, stairsTime as int,
                             wallItem as IItemStack, wallBlock as IBlockState, wallTime as int) as MaterialBuilder {
    cutStone.addOutput(slabItem * 2, slabTime, slabBlock).addOutput(stairsItem * 1, stairsTime, stairsBlock);
    if (!isNull(wallItem)) {
      cutStone.addOutput(wallItem * 1, wallTime, wallBlock);
    }
    return this;
  }

  function withStoneProducts(slabItem as IItemStack, slabBlock as IBlockState,
                             stairsItem as IItemStack, stairsBlock as IBlockState,
                             wallItem as IItemStack, wallBlock as IBlockState) as MaterialBuilder {
    return withStoneProducts(slabItem, slabBlock, 12, stairsItem, stairsBlock, 12, wallItem, wallBlock, 12);
  }

  function withUBStoneProducts(products as UBStoneProducts) as MaterialBuilder {
    val meta = stoneItem.metadata;
    val variant = stoneBlock.getPropertyValue("type");
    return withStoneProducts(
      products.slabItem.makeStack(meta),
      products.slabBlock.withProperty("type", variant),
      products.stairsItem.makeStack(meta),
      products.stairsBlock.withProperty("type", variant),
      products.wallItem.makeStack(meta),
      products.wallBlock.withProperty("type", variant));
  }

  function withSandstoneProducts(chiseledItem as IItemStack, chiseledBlock as IBlockState, chiseledTime as int
                                 smoothItem as IItemStack, smoothBlock as IBlockState, smoothTime as int,
                                 smoothToChiseledTime as int) as MaterialBuilder {
    cutStone
      .addOutput(chiseledItem * 1, chiseledTime, chiseledBlock)
      .addOutput(smoothItem * 1, smoothTime, smoothBlock);
    cutSmooth = CuttingSawRecipeBuilder.newRecipe(smoothItem, smoothBlock)
      .addOutput(chiseledItem * 1, smoothToChiseledTime, chiseledBlock);
    return this;
  }

  function withSandstoneProducts(chiseledItem as IItemStack, chiseledBlock as IBlockState,
                                 smoothItem as IItemStack, smoothBlock as IBlockState) as MaterialBuilder {
    return withSandstoneProducts(chiseledItem, chiseledBlock, 12, smoothItem, smoothBlock, 12, 6);
  }

  function withUBSandstoneProducts(products as UBSandstoneProducts) as MaterialBuilder {
    val meta = stoneItem.metadata;
    val variant = stoneBlock.getPropertyValue("type");
    return withSandstoneProducts(
      products.chiseledItem.makeStack(meta),
      products.chiseledBlock.withProperty("type", variant),
      products.smoothItem.makeStack(meta),
      products.smoothBlock.withProperty("type", variant));
  }

  function withBricks(brickItem as IItemStack, brickTime as int, brickBlockItem as IItemStack, brickBlockState as IBlockState) as MaterialBuilder {
    if (!isNull(cutStone)) {
      cutStone.addOutput(brickItem * 4, brickTime);
    }
    this.brickItem = brickItem;
    this.brickBlockItem = brickBlockItem;
    cutBricks = CuttingSawRecipeBuilder.newRecipe(brickBlockItem, brickBlockState);
    return this;
  }

  function withBricks(brickItem as IItemStack, brickBlockItem as IItemStack, brickBlockState as IBlockState) as MaterialBuilder {
    return withBricks(brickItem, 12, brickBlockItem, brickBlockState);
  }

  function withLooseBricks(looseBrickBlockItem as IItemStack, looseBrickBlockState as IBlockState, looseBrickTime as int) as MaterialBuilder {
    if (!isNull(cutStone)) {
      cutStone.addOutput(looseBrickBlockItem * 1, looseBrickTime, looseBrickBlockState);
    }
    brickDropList.add(Dropt.rule()
      .matchBlocks([looseBrickBlockState.block.definition.id~":"~looseBrickBlockState.meta])
      .addDrop(Dropt.drop().items([brickItem], Dropt.range(4))));
    recipes.addShapeless("loose_brick_"~name, brickItem * 4, [looseBrickBlockItem * 1]);
    GraniteAnvil.addRecipe("brick_to_loose_"~name, brickItem * 4, brickBlockItem, 10, "hammer", true);
    return this;
  }

  function withLooseBricks(looseBrickBlockItem as IItemStack, looseBrickBlockState as IBlockState) as MaterialBuilder {
    return withLooseBricks(looseBrickBlockItem, looseBrickBlockState, 12);
  }

  function withBrickProducts(slabItem as IItemStack, slabBlock as IBlockState, slabTime as int,
                             stairsItem as IItemStack, stairsBlock as IBlockState, stairsTime as int,
                             wallItem as IItemStack, wallBlock as IBlockState, wallTime as int) as MaterialBuilder {
    cutBricks
      .addOutput(slabItem * 2, slabTime, slabBlock)
      .addOutput(stairsItem * 1, stairsTime, stairsBlock)
      .addOutput(wallItem * 1, wallTime, wallBlock);
    return this;
  }

  function withBrickProducts(slabItem as IItemStack, slabBlock as IBlockState,
                             stairsItem as IItemStack, stairsBlock as IBlockState,
                             wallItem as IItemStack, wallBlock as IBlockState) as MaterialBuilder {
    return withBrickProducts(slabItem, slabBlock, 12, stairsItem, stairsBlock, 12, wallItem, wallBlock, 12);
  }

  function withUBBrickProducts(products as UBStoneProducts) as MaterialBuilder {
    val meta = stoneItem.metadata;
    val variant = stoneBlock.getPropertyValue("type");
    return withBrickProducts(
      products.slabItem.makeStack(meta),
      products.slabBlock.withProperty("type", variant),
      products.stairsItem.makeStack(meta),
      products.stairsBlock.withProperty("type", variant),
      products.wallItem.makeStack(meta),
      products.wallBlock.withProperty("type", variant));
  }

  function withFancyBricks(fancyItem as IItemStack, fancyBlock as IBlockState, fancyTime as int) as MaterialBuilder {
    cutBricks.addOutput(fancyItem, fancyTime, fancyBlock);
    return this;
  }

  function withFancyBricks(fancyItem as IItemStack, fancyBlock as IBlockState) as MaterialBuilder {
    return withFancyBricks(fancyItem, fancyBlock, 12);
  }

  function withRock(rock as IItemStack, brickTime as int) as MaterialBuilder {
    cutRock = CuttingSawRecipeBuilder.newRecipe(rock).addOutput(masonryBrick * 1, brickTime);
    if (!isNull(brickItem)) {
      cutRock.addOutput(brickItem * 1, brickTime);
    }
    return this;
  }

  function withRock(rock as IItemStack) as MaterialBuilder {
    return withRock(rock, 6);
  }

  function withCobble(cobbleItem as IItemStack, cobbleBlock as IBlockState) as MaterialBuilder {
    cutCobble = CuttingSawRecipeBuilder.newRecipe(cobbleItem, cobbleBlock);
    return this;
  }

  function withCobbleProducts(slabItem as IItemStack, slabBlock as IBlockState, slabTime as int,
                              stairsItem as IItemStack, stairsBlock as IBlockState, stairsTime as int,
                              wallItem as IItemStack, wallBlock as IBlockState, wallTime as int) as MaterialBuilder {
    cutCobble
      .addOutput(slabItem * 2, slabTime, slabBlock)
      .addOutput(stairsItem * 1, stairsTime, stairsBlock)
      .addOutput(wallItem * 1, wallTime, wallBlock);
    return this;
  }

  function withCobbleProducts(slabItem as IItemStack, slabBlock as IBlockState,
                              stairsItem as IItemStack, stairsBlock as IBlockState,
                              wallItem as IItemStack, wallBlock as IBlockState) as MaterialBuilder {
    return withCobbleProducts(slabItem, slabBlock, 12, stairsItem, stairsBlock, 12, wallItem, wallBlock, 12);
  }

  function withUBCobbleProducts(products as UBStoneProducts) as MaterialBuilder {
    val meta = stoneItem.metadata;
    val variant = stoneBlock.getPropertyValue("type");
    return withCobbleProducts(
      products.slabItem.makeStack(meta),
      products.slabBlock.withProperty("type", variant),
      products.stairsItem.makeStack(meta),
      products.stairsBlock.withProperty("type", variant),
      products.wallItem.makeStack(meta),
      products.wallBlock.withProperty("type", variant));
  }

  function withStoneBricksRecipe(bricksTime as int, looseBricksTime as int) as MaterialBuilder {
    cutStone
      .addOutput(masonryBrick * 4, bricksTime)
      .addOutput(looseStoneBrickBlockItem * 1, looseBricksTime, looseStoneBrickBlockState);
    return this;
  }

  function withStoneBricksRecipe() as MaterialBuilder {
    return withStoneBricksRecipe(12, 12);
  }

  function withFoundationRecipe(foundationTime as int) as MaterialBuilder {
    cutStone.addOutput(foundation * 1, foundationTime);
    return this;
  }

  function withFoundationRecipe() as MaterialBuilder {
    return withFoundationRecipe(12);
  }

  function build() {
    if (!isNull(cutStone) && !cutStone.isEmpty()) {
      cutStone.addToStonecutter(name);
    }
    if (!isNull(cutSmooth) && !cutSmooth.isEmpty()) {
      cutSmooth.addToStonecutter(name~"_smooth");
    }
    if (!isNull(cutBricks) && !cutBricks.isEmpty()) {
      cutBricks.addToStonecutter(name~"_bricks");
    }
    if (!isNull(cutRock) && !cutRock.isEmpty()) {
      cutRock.addToStonecutter(name~"_rock");
    }
    if (!isNull(cutCobble) && !cutCobble.isEmpty()) {
      cutCobble.addToStonecutter(name~"_cobble");
    }
  }
}

MaterialBuilder("clay")
  .withBricks(<minecraft:brick>, <contenttweaker:brick_minecraft_clay>, <blockstate:contenttweaker:brick_minecraft_clay>)
  .withLooseBricks(<contenttweaker:loose_clay_bricks>, <blockstate:contenttweaker:loose_clay_bricks>)
  .withBrickProducts(
    <minecraft:stone_slab:4>, <blockstate:minecraft:double_stone_slab:variant=brick>,
    <minecraft:brick_stairs>, <blockstate:minecraft:brick_stairs>,
    <ceramics:clay_wall>, <blockstate:ceramics:clay_wall:type=bricks>)
  .build();

MaterialBuilder("mud")
  .withBricks(<biomesoplenty:mud_brick>, <contenttweaker:brick_biomesoplenty_mud>, <blockstate:contenttweaker:brick_biomesoplenty_mud>)
  .withLooseBricks(<contenttweaker:loose_mud_bricks>, <blockstate:contenttweaker:loose_mud_bricks>)
  .build();

MaterialBuilder("nether")
  .withBricks(<minecraft:netherbrick>, <contenttweaker:brick_minecraft_nether>, <blockstate:contenttweaker:brick_minecraft_nether>)
  .withLooseBricks(<contenttweaker:loose_nether_bricks>, <blockstate:contenttweaker:loose_nether_bricks>)
  .withBrickProducts(
    <minecraft:stone_slab:6>, <blockstate:minecraft:double_stone_slab:variant=nether_brick>,
    <minecraft:nether_brick_stairs>, <blockstate:minecraft:nether_brick_stairs>,
    <futuremc:nether_brick_wall>, <blockstate:futuremc:nether_brick_wall>)
  .build();

MaterialBuilder("refractory")
  .withBricks(<pyrotech:material:5>, <contenttweaker:brick_pyrotech_refractory>, <blockstate:contenttweaker:brick_pyrotech_refractory>)
  .withLooseBricks(<contenttweaker:loose_refractory_bricks>, <blockstate:contenttweaker:loose_refractory_bricks>)
  .build();

MaterialBuilder("porcelain")
  .withBricks(<ceramics:unfired_clay:5>, <contenttweaker:brick_ceramics_porcelain>, <blockstate:contenttweaker:brick_ceramics_porcelain>)
  .withLooseBricks(<contenttweaker:loose_porcelain_bricks>, <blockstate:contenttweaker:loose_porcelain_bricks>)
  .build();

MaterialBuilder("fiery_nether")
  .withBricks(<netherex:fiery_netherbrick>, <contenttweaker:brick_netherex_fiery>, <blockstate:contenttweaker:brick_netherex_fiery>)
  .withLooseBricks(<contenttweaker:loose_fiery_nether_bricks>, <blockstate:contenttweaker:loose_fiery_nether_bricks>)
  .withBrickProducts(
    <minecraft:stone_slab:6>, <blockstate:minecraft:double_stone_slab:variant=nether_brick>,
    <minecraft:nether_brick_stairs>, <blockstate:minecraft:nether_brick_stairs>,
    <futuremc:nether_brick_wall>, <blockstate:futuremc:nether_brick_wall>)
  .build();

MaterialBuilder("end")
  .withStone(<minecraft:end_stone>, <blockstate:minecraft:end_stone>)
  .withBricks(<contenttweaker:brick_end>, <contenttweaker:brick_minecraft_end>, <blockstate:contenttweaker:brick_minecraft_end>)
  .withLooseBricks(<contenttweaker:loose_big_end_bricks>, <blockstate:contenttweaker:loose_big_end_bricks>)
  .build();

MaterialBuilder("white")
  .withStone(<betterwithmods:aesthetic:6>, <blockstate:betterwithmods:aesthetic:blocktype=whitestone>)
  .withBricks(<contenttweaker:brick_white>, <contenttweaker:brick_betterwithaddons_whitebrick>, <blockstate:contenttweaker:brick_betterwithaddons_whitebrick>)
  .withLooseBricks(<contenttweaker:loose_big_white_bricks>, <blockstate:contenttweaker:loose_big_white_bricks>)
  .build();

MaterialBuilder("dreadstone")
  .withStone(<iceandfire:dread_stone>, <blockstate:iceandfire:dread_stone:player_placed=true>)
  .withBricks(<contenttweaker:brick_dreadstone>, <iceandfire:dread_stone_bricks>, <blockstate:iceandfire:dread_stone_bricks:player_placed=true>)
  .withLooseBricks(<contenttweaker:loose_big_dreadstone_bricks>, <blockstate:contenttweaker:loose_big_dreadstone_bricks>)
  .build();

MaterialBuilder("black_basalt")
  .withStone(<netherex:basalt>, <blockstate:netherex:basalt>)
  .withBricks(<contenttweaker:brick_black_basalt>, <netherex:basalt_brick>, <blockstate:netherex:basalt_brick>)
  .withLooseBricks(<contenttweaker:loose_basalt_nether_bricks>, <blockstate:contenttweaker:loose_basalt_nether_bricks>)
  .build();

MaterialBuilder("brimstone")
  .withStone(<quark:biome_cobblestone>, <blockstate:quark:biome_cobblestone:variant=fire_stone>)
  .withBricks(<contenttweaker:brick_brimstone>, <contenttweaker:brick_quark_brimstone>, <blockstate:contenttweaker:brick_quark_brimstone>)
  .withLooseBricks(<contenttweaker:loose_big_brimstone_bricks>, <blockstate:contenttweaker:loose_big_brimstone_bricks>)
  .build();

MaterialBuilder("permafrost")
  .withStone(<quark:biome_cobblestone:1>, <blockstate:quark:biome_cobblestone:variant=icy_stone>)
  .withBricks(<contenttweaker:brick_permafrost>, <contenttweaker:brick_quark_permafrost>, <blockstate:contenttweaker:brick_quark_permafrost>)
  .withLooseBricks(<contenttweaker:loose_big_permafrost_bricks>, <blockstate:contenttweaker:loose_big_permafrost_bricks>)
  .build();

MaterialBuilder("sandstone")
  .withStone(<minecraft:sandstone>, <blockstate:minecraft:sandstone:type=sandstone>)
  .withSandstoneProducts(
    <minecraft:sandstone:1>, <blockstate:minecraft:sandstone:type=chiseled_sandstone>,
    <minecraft:sandstone:2>, <blockstate:minecraft:sandstone:type=smooth_sandstone>)
  .withBricks(<contenttweaker:brick_sandstone>, <contenttweaker:brick_quark_sandstone>, <blockstate:contenttweaker:brick_quark_sandstone>)
  .withLooseBricks(<contenttweaker:loose_sandstone_bricks>, <blockstate:contenttweaker:loose_sandstone_bricks>)
  .withRock(<pyrotech:rock:6>)
  .build();

MaterialBuilder("red_sandstone")
  .withStone(<minecraft:red_sandstone>, <blockstate:minecraft:red_sandstone:type=red_sandstone>)
  .withSandstoneProducts(
    <minecraft:red_sandstone:1>, <blockstate:minecraft:red_sandstone:type=chiseled_red_sandstone>,
    <minecraft:red_sandstone:2>, <blockstate:minecraft:red_sandstone:type=smooth_red_sandstone>)
  .withBricks(<contenttweaker:brick_red_sandstone>, <contenttweaker:brick_quark_red_sandstone>, <blockstate:contenttweaker:brick_quark_red_sandstone>)
  .withLooseBricks(<contenttweaker:loose_red_sandstone_bricks>, <blockstate:contenttweaker:loose_red_sandstone_bricks>)
  .withRock(<pyrotech:rock:10>)
  .build();

MaterialBuilder("white_sandstone")
  .withStone(<biomesoplenty:white_sandstone>, <blockstate:biomesoplenty:white_sandstone:variant=default>)
  .withSandstoneProducts(
    <biomesoplenty:white_sandstone:1>, <blockstate:biomesoplenty:white_sandstone:variant=chiseled>,
    <biomesoplenty:white_sandstone:2>, <blockstate:biomesoplenty:white_sandstone:variant=smooth>)
  .withStoneProducts(
    <biomesoplenty:other_slab:1>, <blockstate:biomesoplenty:double_other_slab:variant=white_sandstone>,
    <biomesoplenty:white_sandstone_stairs>, <blockstate:biomesoplenty:white_sandstone_stairs>,
    null, null)
  .build();

MaterialBuilder("soul_sandstone")
  .withStone(<quark:soul_sandstone>, <blockstate:quark:biome_cobblestone:variant=fire_stone>)
  .withBricks(<contenttweaker:brick_soul_sandstone>, <contenttweaker:brick_quark_soul_sandstone>, <blockstate:contenttweaker:brick_quark_soul_sandstone>)
  .withLooseBricks(<contenttweaker:loose_soulsandstone_bricks>, <blockstate:contenttweaker:loose_soulsandstone_bricks>)
  .build();

MaterialBuilder("holystone")
  .withStone(<aether_legacy:holystone>, <blockstate:aether_legacy:holystone:aether_legacy_double_drops=false>)
  .withBricks(<contenttweaker:brick_holystone>, <contenttweaker:brick_aether_legacy_holystone>, <blockstate:contenttweaker:brick_aether_legacy_holystone>)
  .withLooseBricks(<contenttweaker:loose_holystone_bricks>, <blockstate:contenttweaker:loose_holystone_bricks>)
  .build();

// MaterialBuilder("stone")
//   .withStone(<minecraft:stone>, <blockstate:minecraft:stone>)
//   .withBricks(<contenttweaker:brick_quartzite>, <contenttweaker:brick_minecraft_stone>, <blockstate:contenttweaker:brick_minecraft_stone>)
//   .withLooseBricks(<contenttweaker:loose_big_coade_bricks>, <blockstate:contenttweaker:loose_big_coade_bricks>)
//   .withBrickProducts(
//     <minecraft:stone_slab:5>, <blockstate:minecraft:double_stone_slab:variant=stone_brick>
//     <minecraft:stone_brick_stairs>, <blockstate:minecraft:stone_brick_stairs>,
//     <futuremc:stone_brick_wall>, <blockstate:futuremc:stone_brick_wall>)
//   .withRock(<pyrotech:rock>)
//   .build();

MaterialBuilder("magicked")
  .withStone(<contenttweaker:magicked_stone>, <blockstate:contenttweaker:magicked_stone>)
  .withBricks(<contenttweaker:brick_magicked>, <contenttweaker:big_magicked_bricks>, <blockstate:contenttweaker:big_magicked_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_magicked_bricks>, <blockstate:contenttweaker:loose_big_magicked_bricks>)
  .withFancyBricks(<contenttweaker:fancy_magicked>, <blockstate:contenttweaker:fancy_magicked>)
  .build();

MaterialBuilder("serpentinite")
  .withStone(<contenttweaker:serpentinite>, <blockstate:contenttweaker:serpentinite>)
  .withBricks(<contenttweaker:brick_serpentinite>, <contenttweaker:big_serpentinite_bricks>, <blockstate:contenttweaker:big_serpentinite_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_serpentinite_bricks>, <blockstate:contenttweaker:loose_big_serpentinite_bricks>)
  .withRock(<pyrotech_compat:rock_sedimentary_sand:11>)
  .build();

/*
 * UB igneous stones
 */

MaterialBuilder("red_granite")
  .withStone(<undergroundbiomes:igneous_stone>, <blockstate:undergroundbiomes:igneous_stone:type=red_granite>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_red_granite>, <undergroundbiomes:igneous_brick>, <blockstate:undergroundbiomes:igneous_brick:type=red_granite>)
  .withLooseBricks(<contenttweaker:loose_big_red_granite_bricks>, <blockstate:contenttweaker:loose_big_red_granite_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous>)
  .withCobble(<undergroundbiomes:igneous_cobble>, <blockstate:undergroundbiomes:igneous_cobble:type=red_granite>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

MaterialBuilder("black_granite")
  .withStone(<undergroundbiomes:igneous_stone:1>, <blockstate:undergroundbiomes:igneous_stone:type=black_granite>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_black_granite>, <undergroundbiomes:igneous_brick:1>, <blockstate:undergroundbiomes:igneous_brick:type=black_granite>)
  .withLooseBricks(<contenttweaker:loose_big_black_granite_bricks>, <blockstate:contenttweaker:loose_big_black_granite_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous:1>)
  .withCobble(<undergroundbiomes:igneous_cobble:1>, <blockstate:undergroundbiomes:igneous_cobble:type=black_granite>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

MaterialBuilder("rhyolite")
  .withStone(<undergroundbiomes:igneous_stone:2>, <blockstate:undergroundbiomes:igneous_stone:type=rhyolite>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_rhyolite>, <undergroundbiomes:igneous_brick:2>, <blockstate:undergroundbiomes:igneous_brick:type=rhyolite>)
  .withLooseBricks(<contenttweaker:loose_big_rhyolite_bricks>, <blockstate:contenttweaker:loose_big_rhyolite_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous:2>)
  .withCobble(<undergroundbiomes:igneous_cobble:2>, <blockstate:undergroundbiomes:igneous_cobble:type=rhyolite>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

MaterialBuilder("andesite")
  .withStone(<undergroundbiomes:igneous_stone:3>, <blockstate:undergroundbiomes:igneous_stone:type=andesite>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_andesite>, <undergroundbiomes:igneous_brick:3>, <blockstate:undergroundbiomes:igneous_brick:type=andesite>)
  .withLooseBricks(<contenttweaker:loose_big_andesite_bricks>, <blockstate:contenttweaker:loose_big_andesite_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous:3>)
  .withCobble(<undergroundbiomes:igneous_cobble:3>, <blockstate:undergroundbiomes:igneous_cobble:type=andesite>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

MaterialBuilder("gabbro")
  .withStone(<undergroundbiomes:igneous_stone:4>, <blockstate:undergroundbiomes:igneous_stone:type=gabbro>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_gabbro>, <undergroundbiomes:igneous_brick:4>, <blockstate:undergroundbiomes:igneous_brick:type=gabbro>)
  .withLooseBricks(<contenttweaker:loose_big_gabbro_bricks>, <blockstate:contenttweaker:loose_big_gabbro_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous:4>)
  .withCobble(<undergroundbiomes:igneous_cobble:4>, <blockstate:undergroundbiomes:igneous_cobble:type=gabbro>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

MaterialBuilder("basalt")
  .withStone(<undergroundbiomes:igneous_stone:5>, <blockstate:undergroundbiomes:igneous_stone:type=basalt>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_basalt>, <undergroundbiomes:igneous_brick:5>, <blockstate:undergroundbiomes:igneous_brick:type=basalt>)
  .withLooseBricks(<contenttweaker:loose_big_basalt_bricks>, <blockstate:contenttweaker:loose_big_basalt_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous:5>)
  .withCobble(<undergroundbiomes:igneous_cobble:5>, <blockstate:undergroundbiomes:igneous_cobble:type=basalt>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

MaterialBuilder("komatiite")
  .withStone(<undergroundbiomes:igneous_stone:6>, <blockstate:undergroundbiomes:igneous_stone:type=komatiite>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_komatiite>, <undergroundbiomes:igneous_brick:6>, <blockstate:undergroundbiomes:igneous_brick:type=komatiite>)
  .withLooseBricks(<contenttweaker:loose_big_komatiite_bricks>, <blockstate:contenttweaker:loose_big_komatiite_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous:6>)
  .withCobble(<undergroundbiomes:igneous_cobble:6>, <blockstate:undergroundbiomes:igneous_cobble:type=komatiite>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

MaterialBuilder("dacite")
  .withStone(<undergroundbiomes:igneous_stone:7>, <blockstate:undergroundbiomes:igneous_stone:type=dacite>)
  .withUBStoneProducts(igStoneProducts)
  .withBricks(<contenttweaker:brick_dacite>, <undergroundbiomes:igneous_brick:7>, <blockstate:undergroundbiomes:igneous_brick:type=dacite>)
  .withLooseBricks(<contenttweaker:loose_big_dacite_bricks>, <blockstate:contenttweaker:loose_big_dacite_bricks>)
  .withUBBrickProducts(igBrickProducts)
  .withRock(<pyrotech_compat:rock_igneous:7>)
  .withCobble(<undergroundbiomes:igneous_cobble:7>, <blockstate:undergroundbiomes:igneous_cobble:type=dacite>)
  .withUBCobbleProducts(igCobbleProducts)
  .withFoundationRecipe()
  .build();

/*
 * UB metamorphic stones
 */

MaterialBuilder("gneiss")
  .withStone(<undergroundbiomes:metamorphic_stone>, <blockstate:undergroundbiomes:metamorphic_stone:type=gneiss>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_gneiss>, <undergroundbiomes:metamorphic_brick>, <blockstate:undergroundbiomes:metamorphic_brick:type=gneiss>)
  .withLooseBricks(<contenttweaker:loose_big_gneiss_bricks>, <blockstate:contenttweaker:loose_big_gneiss_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withRock(<pyrotech_compat:rock_metamorphic>)
  .withCobble(<undergroundbiomes:metamorphic_cobble>, <blockstate:undergroundbiomes:metamorphic_cobble:type=gneiss>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

MaterialBuilder("eclogite")
  .withStone(<undergroundbiomes:metamorphic_stone:1>, <blockstate:undergroundbiomes:metamorphic_stone:type=eclogite>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_eclogite>, <undergroundbiomes:metamorphic_brick:1>, <blockstate:undergroundbiomes:metamorphic_brick:type=eclogite>)
  .withLooseBricks(<contenttweaker:loose_big_eclogite_bricks>, <blockstate:contenttweaker:loose_big_eclogite_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withRock(<pyrotech_compat:rock_metamorphic:1>)
  .withCobble(<undergroundbiomes:metamorphic_cobble:1>, <blockstate:undergroundbiomes:metamorphic_cobble:type=eclogite>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

MaterialBuilder("marble")
  .withStone(<undergroundbiomes:metamorphic_stone:2>, <blockstate:undergroundbiomes:metamorphic_stone:type=marble>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_marble>, <undergroundbiomes:metamorphic_brick:2>, <blockstate:undergroundbiomes:metamorphic_brick:type=marble>)
  .withLooseBricks(<contenttweaker:loose_big_marble_bricks>, <blockstate:contenttweaker:loose_big_marble_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withRock(<pyrotech_compat:rock_metamorphic:2>)
  .withCobble(<undergroundbiomes:metamorphic_cobble:2>, <blockstate:undergroundbiomes:metamorphic_cobble:type=marble>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

MaterialBuilder("quartzite")
  .withStone(<undergroundbiomes:metamorphic_stone:3>, <blockstate:undergroundbiomes:metamorphic_stone:type=quartzite>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_quartzite>, <undergroundbiomes:metamorphic_brick:3>, <blockstate:undergroundbiomes:metamorphic_brick:type=quartzite>)
  .withLooseBricks(<contenttweaker:loose_big_quartzite_bricks>, <blockstate:contenttweaker:loose_big_quartzite_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withRock(<pyrotech_compat:rock_metamorphic:3>)
  .withCobble(<undergroundbiomes:metamorphic_cobble:3>, <blockstate:undergroundbiomes:metamorphic_cobble:type=quartzite>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

MaterialBuilder("blue_schist")
  .withStone(<undergroundbiomes:metamorphic_stone:4>, <blockstate:undergroundbiomes:metamorphic_stone:type=blueschist>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_blue_schist>, <undergroundbiomes:metamorphic_brick:4>, <blockstate:undergroundbiomes:metamorphic_brick:type=blueschist>)
  .withLooseBricks(<contenttweaker:loose_big_blueschist_bricks>, <blockstate:contenttweaker:loose_big_blueschist_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withRock(<pyrotech_compat:rock_metamorphic:4>)
  .withCobble(<undergroundbiomes:metamorphic_cobble:4>, <blockstate:undergroundbiomes:metamorphic_cobble:type=blueschist>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

MaterialBuilder("green_schist")
  .withStone(<undergroundbiomes:metamorphic_stone:5>, <blockstate:undergroundbiomes:metamorphic_stone:type=greenschist>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_green_schist>, <undergroundbiomes:metamorphic_brick:5>, <blockstate:undergroundbiomes:metamorphic_brick:type=greenschist>)
  .withLooseBricks(<contenttweaker:loose_big_greenschist_bricks>, <blockstate:contenttweaker:loose_big_greenschist_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withRock(<pyrotech_compat:rock_metamorphic:5>)
  .withCobble(<undergroundbiomes:metamorphic_cobble:5>, <blockstate:undergroundbiomes:metamorphic_cobble:type=greenschist>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

MaterialBuilder("soapstone")
  .withStone(<undergroundbiomes:metamorphic_stone:6>, <blockstate:undergroundbiomes:metamorphic_stone:type=soapstone>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_soapstone>, <undergroundbiomes:metamorphic_brick:6>, <blockstate:undergroundbiomes:metamorphic_brick:type=soapstone>)
  .withLooseBricks(<contenttweaker:loose_big_soapstone_bricks>, <blockstate:contenttweaker:loose_big_soapstone_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withFancyBricks(<contenttweaker:fancy_soapstone>, <blockstate:contenttweaker:fancy_soapstone>)
  .withRock(<pyrotech_compat:rock_metamorphic:6>)
  .withCobble(<undergroundbiomes:metamorphic_cobble:6>, <blockstate:undergroundbiomes:metamorphic_cobble:type=soapstone>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

MaterialBuilder("migmatite")
  .withStone(<undergroundbiomes:metamorphic_stone:7>, <blockstate:undergroundbiomes:metamorphic_stone:type=migmatite>)
  .withUBStoneProducts(metaStoneProducts)
  .withBricks(<contenttweaker:brick_migmatite>, <undergroundbiomes:metamorphic_brick:7>, <blockstate:undergroundbiomes:metamorphic_brick:type=migmatite>)
  .withLooseBricks(<contenttweaker:loose_big_migmatite_bricks>, <blockstate:contenttweaker:loose_big_migmatite_bricks>)
  .withUBBrickProducts(metaBrickProducts)
  .withRock(<pyrotech_compat:rock_metamorphic:7>)
  .withCobble(<undergroundbiomes:metamorphic_cobble:7>, <blockstate:undergroundbiomes:metamorphic_cobble:type=migmatite>)
  .withUBCobbleProducts(metaCobbleProducts)
  .withStoneBricksRecipe()
  .withFoundationRecipe()
  .build();

/*
 * UB sedimentary stones
 */

MaterialBuilder("limestone")
  .withStone(<undergroundbiomes:sedimentary_stone>, <blockstate:undergroundbiomes:sedimentary_stone:type=limestone>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_limestone>, <contenttweaker:big_limestone_bricks>, <blockstate:contenttweaker:big_limestone_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_limestone_bricks>, <blockstate:contenttweaker:loose_big_limestone_bricks>)
  .withFancyBricks(<contenttweaker:fancy_limestone>, <blockstate:contenttweaker:fancy_limestone>)
  .withRock(<pyrotech:rock:8>)
  .build();

MaterialBuilder("chalk")
  .withStone(<undergroundbiomes:sedimentary_stone:1>, <blockstate:undergroundbiomes:sedimentary_stone:type=chalk>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_chalk>, <contenttweaker:big_chalk_bricks>, <blockstate:contenttweaker:big_chalk_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_chalk_bricks>, <blockstate:contenttweaker:loose_big_chalk_bricks>)
  .withRock(<pyrotech_compat:rock_sedimentary>)
  .build();

MaterialBuilder("shale")
  .withStone(<undergroundbiomes:sedimentary_stone:2>, <blockstate:undergroundbiomes:sedimentary_stone:type=shale>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_shale>, <contenttweaker:big_shale_bricks>, <blockstate:contenttweaker:big_shale_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_shale_bricks>, <blockstate:contenttweaker:loose_big_shale_bricks>)
  .withRock(<pyrotech_compat:rock_sedimentary:1>)
  .build();

MaterialBuilder("siltstone")
  .withStone(<undergroundbiomes:sedimentary_stone:3>, <blockstate:undergroundbiomes:sedimentary_stone:type=siltstone>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_siltstone>, <contenttweaker:big_siltstone_bricks>, <blockstate:contenttweaker:big_siltstone_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_siltstone_bricks>, <blockstate:contenttweaker:loose_big_siltstone_bricks>)
  .withRock(<pyrotech_compat:rock_sedimentary:2>)
  .build();

MaterialBuilder("lignite")
  .withStone(<undergroundbiomes:sedimentary_stone:4>, <blockstate:undergroundbiomes:sedimentary_stone:type=lignite>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_lignite>, <contenttweaker:big_lignite_bricks>, <blockstate:contenttweaker:big_lignite_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_lignite_bricks>, <blockstate:contenttweaker:loose_big_lignite_bricks>)
  .withRock(<pyrotech_compat:rock_igneous_sand:9>)
  .build();

MaterialBuilder("dolomite")
  .withStone(<undergroundbiomes:sedimentary_stone:5>, <blockstate:undergroundbiomes:sedimentary_stone:type=dolomite>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_dolomite>, <contenttweaker:big_dolomite_bricks>, <blockstate:contenttweaker:big_dolomite_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_dolomite_bricks>, <blockstate:contenttweaker:loose_big_dolomite_bricks>)
  .withRock(<pyrotech_compat:rock_sedimentary:3>)
  .build();

MaterialBuilder("greywacke")
  .withStone(<undergroundbiomes:sedimentary_stone:6>, <blockstate:undergroundbiomes:sedimentary_stone:type=greywacke>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_greywacke>, <contenttweaker:big_greywacke_bricks>, <blockstate:contenttweaker:big_greywacke_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_greywacke_bricks>, <blockstate:contenttweaker:loose_big_greywacke_bricks>)
  .withRock(<pyrotech_compat:rock_sedimentary:4>)
  .build();

MaterialBuilder("chert")
  .withStone(<undergroundbiomes:sedimentary_stone:7>, <blockstate:undergroundbiomes:sedimentary_stone:type=chert>)
  .withUBStoneProducts(sediStoneProducts)
  .withBricks(<contenttweaker:brick_chert>, <contenttweaker:big_chert_bricks>, <blockstate:contenttweaker:big_chert_bricks>)
  .withLooseBricks(<contenttweaker:loose_big_chert_bricks>, <blockstate:contenttweaker:loose_big_chert_bricks>)
  .withRock(<pyrotech_compat:rock_sedimentary:5>)
  .build();

/*
 * UB igneous sandstones
 */

MaterialBuilder("red_granite_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:0>, <blockstate:undergroundbiomes:igneous_sandstone:type=red_granite>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

MaterialBuilder("black_granite_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:1>, <blockstate:undergroundbiomes:igneous_sandstone:type=black_granite>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

MaterialBuilder("rhyolite_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:2>, <blockstate:undergroundbiomes:igneous_sandstone:type=rhyolite>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

MaterialBuilder("andesite_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:3>, <blockstate:undergroundbiomes:igneous_sandstone:type=andesite>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

MaterialBuilder("gabbro_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:4>, <blockstate:undergroundbiomes:igneous_sandstone:type=gabbro>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

MaterialBuilder("basalt_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:5>, <blockstate:undergroundbiomes:igneous_sandstone:type=basalt>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

MaterialBuilder("komatiite_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:6>, <blockstate:undergroundbiomes:igneous_sandstone:type=komatiite>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

MaterialBuilder("dacite_sandstone")
  .withStone(<undergroundbiomes:igneous_sandstone:7>, <blockstate:undergroundbiomes:igneous_sandstone:type=dacite>)
  .withUBSandstoneProducts(igSandstoneProducts)
  .build();

/*
 * UB metamorphic sandstones
 */

MaterialBuilder("gneiss_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:0>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=gneiss>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

MaterialBuilder("eclogite_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:1>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=eclogite>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

MaterialBuilder("marble_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:2>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=marble>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

MaterialBuilder("quartzite_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:3>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=quartzite>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

MaterialBuilder("blue_schist_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:4>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=blueschist>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

MaterialBuilder("green_schist_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:5>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=greenschist>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

MaterialBuilder("soapstone_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:6>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=soapstone>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

MaterialBuilder("migmatite_sandstone")
  .withStone(<undergroundbiomes:metamorphic_sandstone:7>, <blockstate:undergroundbiomes:metamorphic_sandstone:type=migmatite>)
  .withUBSandstoneProducts(metaSandstoneProducts)
  .build();

/*
 * UB sedimentary sandstones
 */

MaterialBuilder("limestone_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:0>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=limestone>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

MaterialBuilder("chalk_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:1>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=chalk>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

MaterialBuilder("shale_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:2>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=shale>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

MaterialBuilder("siltstone_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:3>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=siltstone>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

MaterialBuilder("lignite_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:4>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=lignite>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

MaterialBuilder("dolomite_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:5>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=dolomite>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

MaterialBuilder("greywacke_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:6>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=greywacke>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

MaterialBuilder("chert_sandstone")
  .withStone(<undergroundbiomes:sedimentary_sandstone:7>, <blockstate:undergroundbiomes:sedimentary_sandstone:type=chert>)
  .withUBSandstoneProducts(sediSandstoneProducts)
  .build();

/*
 * Other random recipes
 */

// TODO not sure what's going on down here
// White stone recipes

// Stonecutter.addOutputs(<betterwithmods:aesthetic:6>,
// 							<betterwithaddons:whitebrick>,
// 							<betterwithaddons:whitebrick:3>);

// Stonecutter.addOutputs(<contenttweaker:brick_betterwithaddons_whitebrick>,
// 							<betterwithaddons:whitebrick:3>);

CuttingSawRecipeBuilder.newRecipe(<minecraft:quartz_block>, <blockstate:minecraft:quartz_block>)
  .addOutput(<quark:quartz_wall>, 12, <blockstate:quark:quartz_wall>)
  .addOutput(<netherex:quartz_wall>, 12, <blockstate:netherex:quartz_wall>)
  .addToStonecutter("quartz");
