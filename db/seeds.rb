3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog: #{blog}",
    body: 'Everyday carry farm-to-table kale chips, selvage assumenda cloud bread 
           forage fugiat mixtape. Pinterest DIY hell of duis kale chips, pitchfork 
           adipisicing. Chillwave meh cornhole adipisicing, ugh fugiat occupy 
           godard. Stumptown celiac pabst YOLO jean shorts humblebrag, scenester 
           meh heirloom commodo raw denim yr pork belly beard forage. Ea quinoa 
           occupy yuccie vero qui, kinfolk disrupt anim. Master cleanse kombucha 
           pinterest dolor banh mi. Est enamel pin letterpress, man bun try-hard 
           salvia migas typewriter fingerstache.',
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 60
  )
end

puts "5 skills created"


4.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Everyday carry farm-to-table kale chips, selvage assumenda cloud bread 
           forage fugiat mixtape. Pinterest DIY hell of duis kale chips, pitchfork 
           adipisicing. Chillwave meh cornhole adipisicing, ugh fugiat occupy 
           godard. Stumptown celiac pabst YOLO jean shorts humblebrag, scenester 
           meh heirloom commodo raw denim yr pork belly beard forage. Ea quinoa 
           occupy yuccie vero qui, kinfolk disrupt anim. Master cleanse kombucha 
           pinterest dolor banh mi. Est enamel pin letterpress, man bun try-hard 
           salvia migas typewriter fingerstache.",
    main_image: "http://via.placeholder.com/700x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

2.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Everyday carry farm-to-table kale chips, selvage assumenda cloud bread 
           forage fugiat mixtape. Pinterest DIY hell of duis kale chips, pitchfork 
           adipisicing. Chillwave meh cornhole adipisicing, ugh fugiat occupy 
           godard. Stumptown celiac pabst YOLO jean shorts humblebrag, scenester 
           meh heirloom commodo raw denim yr pork belly beard forage. Ea quinoa 
           occupy yuccie vero qui, kinfolk disrupt anim. Master cleanse kombucha 
           pinterest dolor banh mi. Est enamel pin letterpress, man bun try-hard 
           salvia migas typewriter fingerstache.",
    main_image: "http://via.placeholder.com/700x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end




puts "9 portfolio items created"