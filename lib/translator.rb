# require modules here
require 'yaml'

def load_library(emoticon_file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')

  hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.each do |key, value|
    hash[:get_meaning][value[1]] = key
    hash[:get_emoticon][value[0]] = value[1]
  end
  hash
end	

def get_japanese_emoticon(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib[:get_emoticon][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end

def get_english_meaning(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  english_emoticon = emoticon_lib[:get_meaning][emoticon]
  english_emoticon ? english_emoticon : 'Sorry, that emoticon was not found'
end
