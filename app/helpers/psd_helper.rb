module PsdHelper
  require 'psd'
  
  def read_keywords_from_psd
    keywords = []
    PSD.open("app/assets/images/sample.psd") do |psd|
      psd.tree.descendant_layers.each do |layer|
        keywords.push(layer&.to_hash[:name])
      end
    end
    keywords.compact.uniq
  end
end
