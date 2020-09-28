# require modules here
require 'yaml'

def load_library(file_path)
 emoticons = YAML.load_file(file_path) 
 new_result = {
  :get_meaning => {}, 
  :get_emoticon => {}       
}
emoticons.each do |meaning, value|
 new_result[:get_meaning][value[1]] = meaning
 new_result[:get_emoticon][value[0]] = value[1]
end	end
new_result
end

def get_japanese_emoticon(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  if emoticon_lib[:get_emoticon].include? (emoticon)
    return emoticon_lib[:get_emoticon][emoticon]
  else
    return "Sorry that emoticon was not found"
  end
end

def get_english_meaning(emoticon_file, emoticon)
  # code goes here
end
