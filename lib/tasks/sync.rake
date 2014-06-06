require 'open-uri'

namespace :vegetables do
  task :sync_data => :environment do
    rows = Nokogiri::HTML(open("http://www.zjazdowa.com.pl/index.php/aktualne-ceny-warzyw-i-owocow-.html")).search("table#krajowe tbody tr")

    rows.each do |row|
      unit = row.children[2].to_str.strip.split(' ')[1] || row.children[2].to_str.strip.split(' ')[0]

      unit_size = row.children[2].to_str.strip.split(' ')[0].to_f
      if unit_size == 0
        unit_size = 1
      end

      price_min = (row.children[4].to_str.strip.to_f / unit_size).to_f.round(2)
      price_max = (row.children[6].to_str.strip.to_f / unit_size).to_f.round(2)

      if price_min == 0
        price_min = "brak"
      end

      if price_max == 0
        price_max = "brak"
      end

      Vegetable.create(
        name:       row.children[0].to_str.strip.downcase,
        unit:       unit,
        price_min:  price_min.to_s,
        price_max:  price_max.to_s,
        date:       Date.today
      )
    end
  end
end