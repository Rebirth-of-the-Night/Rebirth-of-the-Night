def setDamage = { id, float dmg -> item(id).item.@attackDamage = dmg - 1 }
def setSpeed  = { id, double spd -> item(id).item.@attackSpeed = spd }

setDamage 'spartanweaponry:halberd_invar', 12
setSpeed  'spartanweaponry:halberd_invar', 1.4

setDamage 'spartanweaponry:pike_invar', 7.5

setDamage 'spartanweaponry:staff_diamond', 6

setDamage 'spartanweaponry:spear_wood', 0.5
setSpeed  'spartanweaponry:spear_wood', 1.8
