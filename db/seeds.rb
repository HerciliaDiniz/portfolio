User.create!(
  name: 'Hercilia Diniz',
  email: 'h@h.com',
  password: 'testpass',
  is_admin: true
) 

puts "Admin user #{User.last.name} was created. Use email: #{User.last.email} and password: 'testpass'."

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end 

puts "#{Topic.count} topics were created."

10.times do |blog| 
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.',
    topic_id: Topic.last.id 
  )
end

puts "#{Blog.count} blog posts were created."

5.times do |skill|
  Skill.create!(
  title: "Rails #{skill}",
    percent_utilized: 15
  )
  end

puts "#{Skill.count} skills were created."

9.times do |portfolio_item| 
  PortfolioPage.create!(
    title: "Portfolio Ruby title: #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end

9.times do |portfolio_item| 
  PortfolioPage.create!(
    title: "Portfolio Angular title: #{portfolio_item}",
    subtitle: 'Angular JS',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end

puts "#{PortfolioPage.count} portfolio items were created."

3.times do |technology|
  PortfolioPage.last.technologies.create!(
    name: "Technology #{technology}",
  )
end

puts "#{Technology.count} technologies were created."

