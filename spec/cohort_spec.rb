require 'spec_helper'

describe AcademyTracker do
  it "accepts student and session and creates array" do
    academy.accept!('John Daly', 'Winter Session')
    academy.accept!('Meg Whitman', 'Winter Session')
    academy.accept!('Jill Ackman', 'Spring Session')

    expect(academy.roster).to have_content({
                                             'Winter Session' => ['John Daly', 'Meg Whitman'],
                                               'Spring Session' => ['Jill Ackman']
                                               })
  end
end
