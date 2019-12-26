# Author: PeerHeer
#
# Delete the first matching element from a list.

# Check if the list contains the element.
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operations/contains/exact_match/contains

# If a different function than the default was used, the list is iterated through.
execute unless score $dynalist.function dynalist.in matches 0 run function dynalist.private:internal/length
execute unless score $dynalist.function dynalist.in matches 0 run scoreboard players set $dynalist.success dynalist.out 0

# If the list contains the element, start iteration.
execute if score $dynalist.success dynalist.out matches 1 run function dynalist.private:operations/delete/delete_first/iterate_start