require_relative 'helper'

describe Author do
  it 'has a twitter handle' do
    @author = Author.create!(name: 'Mike', twitter_handle: '@ppyxmw')
    @author.twitter_handle.must_equal('@ppyxmw')
  end

  # it 'has a github profile'

  # end
end