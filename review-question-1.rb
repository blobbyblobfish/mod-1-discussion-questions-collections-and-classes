require 'pry'

## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 60,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?

def bulbasaur_url (pokemon)
    bulbasaur = pokemon.find {|poke_hash| poke_hash[:name] == "bulbasaur"}
    bulbasaur[:abilities][0][:ability][:url]
end

# How would you return the first pokemon with base experience over 40?

def base_experience_over_60 (pokemon)
    pokemon.find {|poke_hash| poke_hash[:base_experience] > 60}
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)

def base_experience_over_60_all (pokemon)
    pokemon.select {|poke_hash| poke_hash[:base_experience] > 60}
end

# How would you return an array of all of the pokemon's names?

def pokemon_names (pokemon)
    pokemon.map {|poke_hash| poke_hash[:name]}
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
# whatever method you use should return true if there are any such pokemon, false if not.

def weight_greater_than_60_true_false (pokemon)
    if pokemon.find {|poke_hash| poke_hash[:weight] > 60}
        true
    else
        false
    end
end

binding.pry