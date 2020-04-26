# week-1-group-review

## Overview

As a group, go through each of the question files. Pick one member of the group to display the code on your table's monitor. Your group's goal is to code out, or write down, the answer to each question asked. Take turns answering each question and try to talk through your thought process while solving the problem. Finally, when your group is finished, open a pull request for your answers. Happy Coding!

**View this repository on Github to see the additional files with the questions**



*******DISCUSSION GROUP NOTES*******

# How would you get the url for Bulbasaur's ability?

pokemon[0][:abilities][0][:ability][:url]

# How would you return the first pokemon with base experience over 40?

pokemon.find do |index| 
    index[:base_experience] > 40
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)

pokemon.select do |index|
    index[:base_experience] > 40
end

# How would you return an array of all of the pokemon's names?

pokemon.map do |index|
    index[:name]
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.

pokemon.each do |index|
    index[:weight] > 60
end