# https://learnrubythehardway.org/book/ex52.html

# we'll make an "engine" that can run the game from Exercise 47 in the browser. This will involve refactoring Exercise 43, mixing in the structure from Exercise 47, adding automated tests, and finally creating a web engine that can run the games.

# The solution to this is to create a little data store (usually in a database or on the disk) that uses a number unique to each browser to keep track of what that browser was doing. This is called "session tracking" uses cookies in the browser to maintain the state of the user through the application. In the little Sinatra framework it's fairly easy by adding this line at the top:
enable :sessions
# Put that line where you put your set calls, and then you can use the session like this:
