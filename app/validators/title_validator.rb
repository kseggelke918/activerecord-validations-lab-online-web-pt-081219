class TitleValidator < ActiveModel::Validator 
  @@click_bait = 
  def validate(record) 
    unless record.title.match?(/Won't Believe/ /Secret/ /Top [number]/ /Guess/)
      record.errors[:title] << "isn't clickbait-y enough!"
    end 
  end 
end 