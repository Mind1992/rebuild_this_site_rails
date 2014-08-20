class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :text, :presence => true
  validates :number, :presence => true
  belongs_to :section

  def next
    Lesson.find_by(:number => self.number + 1)
  end

  def previous
    Lesson.find_by(:number => self.number - 1)
  end
end
