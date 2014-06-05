require 'open-uri'

namespace :vegetables do
  task :sync_data => :environment do
    rows = Nokogiri::HTML(open("http://www.zjazdowa.com.pl/index.php/aktualne-ceny-warzyw-i-owocow-.html")).search("table#krajowe tbody tr")

    rows.each do |row|
      Vegetable.create(
        name:       row.children[0].to_str.strip.downcase,
        unit:       row.children[2].to_str.strip,
        price_min:  row.children[4].to_str.strip.to_i,
        price_max:  row.children[6].to_str.strip.to_i,
        date:       Date.today
      )
    end
  end
end