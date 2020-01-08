class TitleValidator < ActiveModel::Validator 

  def validate(record) 
    unless record.title.match?(/Won't Believe/, /Secret/, /Guess/, /Top \d+/)
      record.errors[:title] << "isn't clickbait-y enough!"
    end 
  end 
end 