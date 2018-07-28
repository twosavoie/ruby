blog_posts = {
  "title" => "Using hashes",
  "author" => "Lisa Savoie"
}

blog_posts = {
  :title => "Using hashes",
  :author => "Lisa Savoie"
}

post_title = blog_posts[:author]
puts "#{post_title} wrote an amazing blog post!"

blog_posts = {
  title: "Using hashes",
  author: "Lisa Savoie"
}

post_title = blog_posts[:author]
puts "#{post_title} wrote an amazing blog post!"
