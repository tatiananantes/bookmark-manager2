feature 'Tesing infrastructure setup' do
  scenario 'going to local host loads Hello World' do
    visit '/'
    expect(page).to have_content 'Hello World'
  end
end