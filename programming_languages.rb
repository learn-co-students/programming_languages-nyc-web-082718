require 'pry'

def reformat_languages(languages)
  hash = {}

  languages.each do |style, data|
    data.each do |attribute, value|
      if hash[attribute].nil?
        hash[attribute] = {type: value[:type],style:[style]}
      else
        hash[attribute][:style] << style
  
      end
    end
  end
  return hash
end
