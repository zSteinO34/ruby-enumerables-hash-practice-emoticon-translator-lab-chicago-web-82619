require "yaml"
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each { |key, value|
    hash["get_meaning"][value[1]] = key
    hash["get_emoticon"][value[0]] = value[1]
  }
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  hash.each { |key, value|
    
  }
  binding.pry
end

def get_english_meaning
  # code goes here
end