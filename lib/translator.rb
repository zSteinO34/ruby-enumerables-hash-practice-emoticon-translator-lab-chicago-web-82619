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
  result = ""
  if hash["get_emoticon"].include?(emoticon)
    result = hash["get_emoticon"][emoticon]
  else
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(file_path, emoticon)
  hash = load_library(file_path)
  result = ""
  if hash["get_meaning"].include?(emoticon)
    result = hash["get_meaning"][emoticon]
  else
    result = "Sorry, that emoticon was not found"
  end
  result
end