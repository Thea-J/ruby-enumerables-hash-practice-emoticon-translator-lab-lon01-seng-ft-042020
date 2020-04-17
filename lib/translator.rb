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
  load_library(file_path)
  if english_emoticon == emoticon_hash[emoji_name][:english]
    emoticon_hash[emoji_name][:japanese]
  else 
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japanese_emoticon)
  load_library(file_path)
    if japanese_emoticon == emoticon_hash[emoji_name][:japanese]
       emoticon_hash[emoji_name][:english]
  else 
     "Sorry, that emoticon was not found"
   end
end


