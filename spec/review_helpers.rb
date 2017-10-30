def add_review(review)
  fill_in('review[comment]', with: review[:comment])
  select(review[:rating], from: 'review[rating]')
  click_on('Create Review')
end
