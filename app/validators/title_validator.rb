class TitleValidator < ActiveModel::Validator 
  CLICK_BAIT = [/Won't Believe/, /Secret/, /Guess/, /Top \d+/]
  def validate(record) 
    unless record.title.include?(CLICK_BAIT)
      record.errors[:title] << "isn't clickbait-y enough!"
    end 
  end 
end 