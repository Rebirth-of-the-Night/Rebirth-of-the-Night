#reloadable

import mods.legacyponder.ManualRegistry;
import mods.legacyponder.IEntry;
import mods.legacyponder.Page;
import mods.legacyponder.HoverComponent;
import mods.legacyponder.DrawableBuilder;
import mods.legacyponder.DrawableBase;


val hover1 = HoverComponent.build(0.5, 0.5, 1.5, function(width as int, height as int) as DrawableBase {
    val drawable = DrawableBuilder.group();
    val bucketText = DrawableBuilder.formattedText("Right-click the chassis after building to summon the Harvester!", 0xFFFFFFFF).setMaxWidth(150);
    drawable.addChild(bucketText);
    drawable.addChild(DrawableBuilder.item(<item:requious:interaction>), 0, 20);
    return drawable;
});
hover1.setDefaultOffset(-200, 20);

val hover2 = HoverComponent.build(1.5, 2.5, 1.5, function(width as int, height as int) as DrawableBase {
    val drawable = DrawableBuilder.group();
    val bucketText = DrawableBuilder.formattedText("The head must be a Jack o'Lantern", 0xFFFFFFFF).setMaxWidth(150);
    drawable.addChild(bucketText);
    drawable.addChild(DrawableBuilder.item(<item:minecraft:lit_pumpkin>), 0, 18);
    return drawable;
});
hover2.setDefaultOffset(100, 20);

val page1 = Page.fromStructure("chapter1/test");
page1.addHoverComponent(hover1);
page1.addHoverComponent(hover2);
page1.setOverlay(function(width as int, height as int) as DrawableBase {
    val group = DrawableBuilder.group();
    group.addChild(DrawableBuilder.formattedText("My Friend Look Like Harvava", 0xFFFFFFFF), 2, 2);
    return group;
});

val entry = IEntry.createEntry("The Harvester Effigy", "Only summonable at night!");
entry.addPage(page1);

entry.addItem(<item:minecraft:hay_block>);
entry.addItem(<item:minecraft:lit_pumpkin>);
entry.addItem(<item:multiblockmobs:soul_chassis>);
entry.addItem(<item:betternether:bone_block>);

ManualRegistry.add("chapter1/test", entry);
