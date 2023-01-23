# raijin:patch
# update patch to fix scoreboards after changes
execute if score #patch markrec_id matches ..29 run scoreboard players set #patch markrec_id 31
#  (Patch-# = ^)                             ^                                              ^
#update both patch numbers when patching
function markrec:uninstall
#
