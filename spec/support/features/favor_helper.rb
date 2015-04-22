module Features
  def create_favor(contents:, friend:)
    fill_in "Contents", with: contents
    fill_in "Friend", with: friend
    click_on "Ask It!"
  end
end
