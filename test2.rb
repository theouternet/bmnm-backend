require 'nokogiri'
require 'open-uri'
require 'pry'
 
 def get_page
 doc = Nokogiri::HTML(open("https://www.imdb.com/showtimes/location/US/75201?sort=user_rating,desc"))
 
moviez = []
  
  doc.css("div.lister-item").each do |m|
    
    deets = {}
    
      deets[:title] = m.css("div.title a").text
      deets[:score] = m.css("div#user_rating strong").text
      deets[:profile_url] = m.css("div.title a").attribute("href").value
    
    moviez << deets
    
  end 
  moviez
  end
  
  
  def scrape_profile_page
  
  html = open(profile_url)______
  profilepage = Nokogiri::HTML(html)______
  #fix these 2 lines
    
      profiledeets = {}
      
      profilepage.css("div.social-icon-container a").each do |icon|
        if icon.attribute("href").value.include?("twitter")
          profiledeets[:twitter] = icon.attribute("href").value 
      elsif icon.attribute("href").value.include?("github")
          profiledeets[:github] = icon.attribute("href").value 
      elsif icon.attribute("href").value.include?("linkedin")
          profiledeets[:linkedin] = icon.attribute("href").value
      else 
        profiledeets[:blog] = icon.attribute("href").value
    end
  end
  
  
 puts get_page