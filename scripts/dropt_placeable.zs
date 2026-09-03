#loader crafttweaker reloadable
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.dropt.Dropt;

JEI.removeAndHide(<bblsom:paper>);
JEI.removeAndHide(<bblsom:paper_w>);

// Placeable drops
// paper
Dropt.list("paper_1")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper:0","bblsom:paper:1","bblsom:paper:2","bblsom:paper:3"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<minecraft:paper>], Dropt.range(1))
      )
  );
Dropt.list("paper_2")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper:4","bblsom:paper:5","bblsom:paper:6","bblsom:paper:7"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<minecraft:paper>], Dropt.range(2))
      )
  );
Dropt.list("paper_3")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper:8","bblsom:paper:9","bblsom:paper:10","bblsom:paper:11"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<minecraft:paper>], Dropt.range(3))
      )
  );
Dropt.list("paper_4")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper:12","bblsom:paper:13","bblsom:paper:14","bblsom:paper:15"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<minecraft:paper>], Dropt.range(4))
      )
  );

// manuscript paper
Dropt.list("paper_manuscript_1")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper_w:0","bblsom:paper_w:1","bblsom:paper_w:2","bblsom:paper_w:3"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<iceandfire:manuscript>], Dropt.range(1))
      )
  );
Dropt.list("paper_manuscript_2")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper_w:4","bblsom:paper_w:5","bblsom:paper_w:6","bblsom:paper_w:7"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<iceandfire:manuscript>], Dropt.range(2))
      )
  );
Dropt.list("paper_manuscript_3")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper_w:8","bblsom:paper_w:9","bblsom:paper_w:10","bblsom:paper_w:11"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<iceandfire:manuscript>], Dropt.range(3))
      )
  );
Dropt.list("paper_manuscript_4")

  .add(Dropt.rule()
      .matchBlocks(["bblsom:paper_w:12","bblsom:paper_w:13","bblsom:paper_w:14","bblsom:paper_w:15"])
	  .matchHarvester(Dropt.harvester()
	  )
  	  .addDrop(Dropt.drop()
          .items([<iceandfire:manuscript>], Dropt.range(4))
      )
  );
