describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :text }
  it { should validate_presence_of :number}

  describe 'next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:text => 'hello', :name => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:text => 'hello',:name => 'lesson2', :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  describe 'next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:text => 'hello', :name => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:text => 'hello',:name => 'lesson2', :number => 2})
      another_lesson = Lesson.create({:text => 'hello',:name => 'lesson3', :number => 3})
      expect(another_lesson.previous).to eq next_lesson
    end
  end
end
