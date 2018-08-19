

def reformat_languages(languages)
new_hash = {}
languages.each do |key, value|
    value.each do |language_name, attributes|
        if new_hash.key?(language_name)
            new_hash[language_name][:style] << key

        else
            new_hash[language_name] = {type: attributes[:type], style: [key]}
        end
    end
  end 
new_hash
end
