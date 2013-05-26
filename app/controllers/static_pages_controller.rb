class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def about
  end
  
  def calendar
    @feed = Feedzirra::Feed.fetch_and_parse("https://www.facebook.com/feeds/page.php?id=185067424858325&format=rss20")
  end
  
  def constitution
    @king = Office.find_by_title("President")
    @queen = Office.find_by_title("Vice President")
    @scribe = Office.find_by_title("Secretary")
    @taxer= Office.find_by_title("Treasurer")
    @bishop = Office.find_by_title("Chaplain")
    @friar = Office.find_by_title("Social Service")
    @sergeant = Office.find_by_title("Athletic Director")
    @ambassador =Office.find_by_title("Rush Director")
    @wizard = Office.find_by_title("Historian")
    @jester = Office.find_by_title("Spring Sing")
  end
  
  def contact
    @king = Office.find_by_title("President")
    @queen = Office.find_by_title("Vice President")
    @scribe = Office.find_by_title("Secretary")
    @taxer= Office.find_by_title("Treasurer")
    @bishop = Office.find_by_title("Chaplain")
    @friar = Office.find_by_title("Social Service")
    @sergeant = Office.find_by_title("Athletic Director")
    @ambassador =Office.find_by_title("Rush Director")
    @wizard = Office.find_by_title("Historian")
    @jester = Office.find_by_title("Spring Sing")
  end
end
