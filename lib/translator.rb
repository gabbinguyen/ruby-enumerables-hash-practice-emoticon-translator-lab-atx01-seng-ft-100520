# require modules here
require 'yaml'

def load_library(emoticon_file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticon_lib = { }

  emoticons.each do |meaning, value|
    filler = { :english => value[0],
               :japanese => value[1]
             }
     emoticon_lib[meaning] = filler
  end
  emoticon_lib
end

def get_japanese_emoticon(emoticon_file, emoticon)
  # code goes here
  
