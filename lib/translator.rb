# require modules here
require "yaml"
require "pry"



def load_library(file_path)
emoticons = YAML.load_file(file_path)
  emoticon_hash = { }

  emoticons.each do |emoji_meaning, emoji_array|
    emoticon_hash[:emoji_meaning] = { }
    emoticon_hash[:emoji_meaning][:english] = emoji_array[0]
    emoticon_hash[:emoji_meaning][:english] = emoji_array[1]
  end
  emoticon_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end