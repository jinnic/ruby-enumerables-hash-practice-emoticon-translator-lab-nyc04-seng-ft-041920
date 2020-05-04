# require modules here
require "yaml"
require "pry"
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

def get_japanese_emoticon
  # code goes here
  
  
end

def get_english_meaning
  # code goes here
end

load_library('lib/emoticons.yml')
binding.pry