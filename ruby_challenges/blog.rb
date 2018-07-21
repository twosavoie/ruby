#Ruby script to create a blog. Designed to be run in the terminal. Remove extra \n in production.

class Blog
  #count total posts
  @@total_posts = 0

  def initialize
    @@total_posts += 1
  end

  def self.current_count
    puts "\nThere are currently #{@@total_posts} Blog Posts."
  end #move to bottom so all methods at bottom?

end

class BlogPost < Blog

  #set title, content, publish date, & author
  def set_title=(title)
    @title = title
  end

  def get_title
    return @title
  end

  def set_content=(content)
    @content = content
  end

  def get_content
    return @content
  end

  def set_publish_date=(publish_date)
    @publish_date = publish_date
  end

  def get_publish_date
    return @publish_date
  end

  def set_author=(author)
    @author = author
  end

  def get_author
    return @author
  end

end

puts "Do you want to create another blog post [Y/N]"
 answer = gets.chomp.downcase
 if (answer == "y")
    #create new blog post
    blog_post = BlogPost.new
    blog_post.set_title= ""
    blog_post_title = blog_post.get_title

    puts "Title of blog post?"
    title = gets
    #get and pass to title
    puts "Author's name"
    author = gets
    #gets and passes to author
    puts "Content"
    content = gets
    #gets and passes to Content

    #print blog
    #title of blog
    puts "\nLisa's amazing blog!"
    #date of blog post
    publish_date = Time.new
    publish_date = publish_date.month.to_s + "/" + publish_date.day.to_s + "/" + publish_date.year.to_s
    #title, author, & content of blog
    puts publish_date + "\n#{title.capitalize}\n" + "#{author.capitalize}\n" + "#{content}"

    #counts blogposts
    BlogPost.current_count

    #list of blog post titles
    posts = [] 
      posts.unshift("#{title}")
      puts "\nList of blog posts: #{title.capitalize}\n"

  elsif (answer == "n")
    puts "Maybe Google for a blog post idea?"
  else
    puts "Y or N please."
end
