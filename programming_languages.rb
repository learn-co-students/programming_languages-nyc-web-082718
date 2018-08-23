require 'pry'

def reformat_languages(languages)
  ref_langs = {}
  languages.each do |style, langs|
    langs.each do |lang, types|
      if ref_langs.has_key?(lang)
        #add style to styles array 
        ref_langs[lang][:style] << style 
      else 
        ref_langs[lang] = {
          :type => types[:type],
          :style => [style]
        }
      end
    end 
  end 
  ref_langs 
end
