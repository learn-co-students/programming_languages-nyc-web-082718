require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, value|
        if new_hash[language] == nil
          new_hash[language] = {}
        end
      new_hash[language][:style] ||= []
      new_hash[language][:style].push(style)
        if new_hash[language][attribute] == nil
          new_hash[language][attribute] = value
        end
      end
    end
  end
  return new_hash
end
