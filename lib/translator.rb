# require modules here
require "yaml"
#require "pry"
#emoticons = YAML.load_file('emoticons.yml')

# method that loads the emoticons.yml file
# return a hash where each key is the name of an emoticons
# Each emoticon name should point to a nested hash
# containing two keys, :english and :japanese
#  {
#       'angel' => {
#         :english => "O:)",
#         :japanese => "☜(⌒▽⌒)☞"
#       }
#   }

#current hash
# {
#   "angel" => [ "O:)", "☜(⌒▽⌒)☞" ]
# }

def load_library(file)
  
  emoticons = YAML.load_file(file)
  
  #key = "angel"
  #value => ["O:)", "☜(⌒▽⌒)☞" ]
  emoticons.each do |key, value|
    #puts "#{emoticons[key]}, #{emoticons[key][0]}, #{emoticons[key][1]}"
    if emoticons[key].class == Array
      emoticons[key] = {:english => emoticons[key][0],:japanese => emoticons[key][1]}
    end
    
  end
end

# takes a Western emoticon and returns Japanese version
def get_japanese_emoticon(file, emoticon_input)
  
  emoticons = load_library(file)
  emoticons.each do |key, value|
    if emoticon_input == emoticons[key][:english]
      #binding.pry
      return emoticons[key][:japanese]
    end
    #return "Sorry, that emoticon was not found"
  end
  
  
end

# takes a Japanese emoticon and returns its name in English
def get_english_meaning(file, emoticon_input)
  emoticons = load_library(file)
  emoticons.each do |key, value|
    if emoticon_input == emoticons[key][:japanese]
      #binding.pry
      return key
    end
    
    #return"Sorry, that emoticon was not found"
  end
end

# load_library('lib/emoticons.yml')
# get_english_meaning('lib/emoticons.yml', "(#^.^#)")
# get_japanese_emoticon('lib/emoticons.yml', ":$")
#binding.pry