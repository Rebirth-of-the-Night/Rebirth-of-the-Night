import com.oblivioussp.spartanweaponry.item.ItemSwordBase
ItemSwordBase.metaClass.makePublic('attackDamage')
ItemSwordBase.metaClass.makePublic('attackSpeed')

item('spartanweaponry:halberd_invar').item.attackDamage = 12
item('spartanweaponry:halberd_invar').item.attackSpeed = 1.4
item('spartanweaponry:pike_invar').item.attackDamage = 7.5

item('spartanweaponry:staff_diamond').item.attackDamage = 6

item('spartanweaponry:spear_wood').item.attackDamage = 0.5
item('spartanweaponry:spear_wood').item.attackSpeed = 1.8