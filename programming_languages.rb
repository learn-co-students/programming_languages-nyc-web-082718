require "pry"

def reformat_languages(languages)
  hash = {}
  #binding.pry
  languages.each do |style, data|
    data.each do |attribute, value|
      if hash[attribute].nil?
        hash[attribute] = {type: value[:type],style:[style]}
      else
        hash[attribute][:style] << style
        #need to check spelling 'styles' isnt a variable.  
      end
    end
  end
  return hash
end
