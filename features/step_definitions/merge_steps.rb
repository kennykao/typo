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
