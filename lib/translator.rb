# require modules here
require "yaml"
require "pry"



def load_library(file_path)
emoticons = YAML.load_file(file_path)
  emoticon_hash = { }

  emoticons.each do |emoji_name, emoji_array|
    emoticon_hash[emoji_name] = { }
    emoticon_hash[emoji_name][:english] = emoji_array[0]
    emoticon_hash[emoji_name][:japanese] = emoji_array[1]
  end
  emoticon_hash
end

def get_japanese_emoticon(file_path, english_emoticon)
 emoticon_hash = load_library(file_path)
 result = 
  emoticon_hash.each do |emoji_name, emoji_hash|
  if emoji_hash[:english] == english_emoticon
  p emoji_hash[:japanese]
  else 
   "Sorry, that emoticon was not found"
end
end
end

def get_english_meaning(file_path, japanese_emoticon)
  emoticon_hash = load_library(file_path)
    if japanese_emoticon == emoticon_hash[japanese_emoticon][:japanese]
       emoticon_hash[japanese_emoticon][:english]
  else 
     "Sorry, that emoticon was not found"
   end
end


