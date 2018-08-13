require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |styles, language_hash|
    language_hash.each do |language, attributes|
      attributes.each do |attribute, type|
        if new_hash[language].nil?  
          new_hash[language] = {:type => type, :style => [styles]} 
        else 
          new_hash[language][:style] << styles
        end 
      end 
    end 
  end 
  new_hash
end

