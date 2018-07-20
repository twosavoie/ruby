class Blog

  @@total_posts = 0

  def initialize
    @@total_posts += 1
  end

  def self.current_count
    puts "There are currently #{@@total_posts} instances of my Blog."
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
gets.chomp.downcase

blog_post = BlogPost.new
blog_post.set_title= "blah"
blog_post_title = blog_post.get_title

  puts "Title of blog post?"
  title = gets
  #get and pass to title
  puts "Author's name"
  author = gets
  #gets and passes to author
  #should I put an if/else that my name is default but leave room for a guest author?
  puts "Content"
  content = gets
  #gets and passes to Content


  puts "Lisa's amazing blog!"
  #ok, so, I want to write a blog post and I've gathered all my info. Time to print blogpost, add to array, add to @@total_posts

  #puts blogpost
  #date first
  publish_date = Time.new
  publish_date = publish_date.month.to_s + "/" + publish_date.day.to_s + "/" + publish_date.year.to_s
  puts publish_date + "\n#{title.capitalize}\n" + "#{author.capitalize}\n" + "#{content}"
