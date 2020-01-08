class TitleValidator < ActiveModel::Validator 

  def validate(record) 
    # unless [/Won't Believe/, /Secret/, /Guess/, /Top \d+/].include? record.title 
    #   record.errors[:title] << "isn't clickbait-y enough!"
    # end 
    
    unless record.title.include?("Won't Believe" || "Secret" || "Guess" || "Top")
      record.errors[:title] << "isn't clickbait-y enough!"
    end 
  end 


  # BAIT = [/Won't Believe/, /Secret/, /Guess/, /Top \d+/]
  
  # def validate(record)
  #   record.errors[:title] << "Moar Clickbait!" unless BAIT.any? { |b| record.title =~ b }
  # end
  
  end 