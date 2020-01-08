class TitleValidator < ActiveModel::Validator 
  @@click_bait = [/Won't Believe/, /Secret/, /Guess/, /Top \d+/]
  def validate(record) 
    unless record.title.match?(@@click_bait)
      record.errors[:title] << "isn't clickbait-y enough!"
    end 
  end 
end 