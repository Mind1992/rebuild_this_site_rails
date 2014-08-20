class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :text, :presence => true
  validates :number, :presence => true

  def next
    Lesson.find_by(:number => self.number + 1)
  end

  def previous
    Lesson.find_by(:number => self.number - 1)
  end
end
