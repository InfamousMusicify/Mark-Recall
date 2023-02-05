# raijin:patch
#execute unless score #patch marks.config matches 0.. unless score #patch marks.config matches ..0 run scoreboard players add #patch marks.config 0
# update patch to fix scoreboards after changes
execute if score #patch marks.config matches ..40 run scoreboard players set #patch marks.config 50
#  (Patch-# = ^)                             ^                                              ^

#update both patch numbers when patching
function markrec:uninstall
#
say patching mark