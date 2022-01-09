# raijin:patch
# update patch to fix scoreboards after changes
execute if score #patch markrec_id matches ..9 run scoreboard players set #patch markrec_id 15
#  (Patch-# = ^)                             ^                                              ^
#update both patch numbers when patching
function markrec:uninstall
#
