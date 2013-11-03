require 'open-uri'

ep1_gross_string = Nokogiri::HTML(open('http://www.boxofficemojo.com/movies/?id=starwars.htm')).css('.mp_box_content')[0].css('b')[4].children[0].text
ep2_gross_string = Nokogiri::HTML(open('http://www.boxofficemojo.com/movies/?id=starwars2.htm')).css('.mp_box_content')[0].css('b')[4].children[0].text
ep3_gross_string = Nokogiri::HTML(open('http://www.boxofficemojo.com/movies/?id=starwars3.htm')).css('.mp_box_content')[0].css('b')[4].children[0].text
ep4_gross_string = Nokogiri::HTML(open('http://www.boxofficemojo.com/movies/?id=starwars4.htm')).css('.mp_box_content')[0].css('b')[4].children[0].text
ep5_gross_string = Nokogiri::HTML(open('http://www.boxofficemojo.com/movies/?id=starwars5.htm')).css('.mp_box_content')[0].css('b')[4].children[0].text
ep6_gross_string = Nokogiri::HTML(open('http://www.boxofficemojo.com/movies/?id=starwars6.htm')).css('.mp_box_content')[0].css('b')[4].children[0].text

ep1_gross = ep1_gross_string.gsub('$', '').gsub(',', '')
ep2_gross = ep2_gross_string.gsub('$', '').gsub(',', '')
ep3_gross = ep3_gross_string.gsub('$', '').gsub(',', '')
ep4_gross = ep4_gross_string.gsub('$', '').gsub(',', '')
ep5_gross = ep5_gross_string.gsub('$', '').gsub(',', '')
ep6_gross = ep6_gross_string.gsub('$', '').gsub(',', '')

Movie.create([
	{ title: "Star Wars: Episode I - The Phantom Menace", gross: ep1_gross },
	{ title: "Star Wars: Episode II - Attack of the Clones", gross: ep2_gross },
	{ title: "Star Wars: Episode III - Revenge of the Sith", gross: ep3_gross },
	{ title: "Star Wars: Episode IV - A New Hope", gross: ep4_gross },
	{ title: "Star Wars: Episode V - Empire Strikes Back", gross: ep5_gross },
	{ title: "Star Wars: Episode VI - Return of the Jedi", gross: ep6_gross }
])