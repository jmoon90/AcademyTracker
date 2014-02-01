class AcademyTracker
  def initialize
    @organize = {}
  end

  def accept!(name, cohort)
    if @organize.has_key?(cohort)
      @organize[cohort] << name
    else
      @organize[cohort] = [name]
    end
  end

  def move!(name, cohort)
    if @organize.values.flatten.include?(name)
      @organize.each do |k, v|
        v.delete(name)
      end
      @organize[cohort] << name
    else
      puts false
    end
  end

  def roster
    puts @organize
  end
end

academy = AcademyTracker.new
academy.accept!("John Moon"  , 'Winter Session')
academy.accept!('Meg Whitman', 'Winter Session')
academy.accept!('Jill Ackman', 'Spring Session')
academy.roster

academy.move!(  'John Moon'  , 'Spring Session')
academy.roster

academy.move!('Johnny Notenrolled', 'Winter Session')
