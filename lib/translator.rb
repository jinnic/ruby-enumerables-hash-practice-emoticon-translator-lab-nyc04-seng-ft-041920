# require modules here
require "yaml"
require "pry"
#emoticons = YAML.load_file('emoticons.yml')

# method that loads the emoticons.yml file
# return a hash where each key is the name of an emoticons
# Each emoticon name should point to a nested hash
# containing two keys, :english and :japanese
#  {
#       'happy' => {
#         :english => ":)",
#         :japanese => "(＾ｖ＾)"
#       }
#   }

#current hash
# {
#   "angel" => [ "O:)", "☜(⌒▽⌒)☞" ]
# }

def load_library(file)
  
  emoticons = YAML.load_file(file)
  binding.pry
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library('emoticons.yml')