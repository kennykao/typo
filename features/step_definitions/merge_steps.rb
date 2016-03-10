Given /the following articles exist/ do |articles_table|
    articles_table.hashes.each do |article|
        Article.create!(article)
    end
end

Then /^(?:|I )should see "([^"]*)" and "([^"]*)"$/ do |text1, text2|
  if page.respond_to? :should
    page.should have_content(text1) and page.should have_content(text2)
  else
    assert page.has_content?(text1) and assert page.has_content?(text2)
  end
end

When /^(?:|I )am on the view page for "([^"]*)"$/ do |article|
  pass
end

And /^(?:|I )merge "([^"]*)" with "([^"]*)"$/ do |article1, article2|
  pass
end

And /^the ([^"]*) should either be "([^"]*)" or "([^"]*)"$/ do |arg1, arg2|
  pass
end

And /^the current user is "([^"]*)"$/ do |user|
  pass
end

And /^the current user is not "([^"]*)"$/ do |user|
  pass
end
