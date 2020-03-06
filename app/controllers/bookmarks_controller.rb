class BookmarksController < ApplicationController

end


# post.is_bookmarkee? # returns true
# post.bookmarked_by?(user) # returns true if user bookmarks the post object, false otherwise
# post.bookmarkers_by(User) # returns a scope of BookmarkSystem::Bookmark join model that belongs to the post object and belongs to bookmarker objects of type User
# user.is_bookmarker? # returns true
# user.bookmark(post) # Creates an instance of BookmarkSystem::Bookmark join model associating the user object and the post object, returns true if succeded, false otherwise
# user.unbookmark(post) # Destroys an instance of BookmarkSystem::Bookmark join model that associates the user object and the post object, returns true if succeded, false otherwise
# user.toggle_bookmark(post) # Bookmarks / unbookmarks the post
# user.bookmarks?(post) # returns true if the user object bookmarks the post object, false otherwise
# user.bookmarkees_by(Post) # returns a scope of BookmarkSystem::Bookmark join model that belongs to the user object and belongs to bookmarkee objects of type Post
