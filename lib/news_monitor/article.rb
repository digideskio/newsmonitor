module NewsMonitor
  class Article < NibblerJSON
    element :id
    element :created_at, with: -> (datetime) { Time.parse datetime }
    element :type
    element :title
    element :language_code
    element :url
    element :published_at, with: -> (datetime) { Time.parse datetime }
    element :directories

    element '.social_metrics.facebook_likes' => :facebook_likes
    element '.social_metrics.facebook_shares' => :facebook_shares
    element '.social_metrics.facebook_comments' => :facebook_comments
    element '.social_metrics.facebook_total' => :facebook_total
    element '.social_metrics.twitter' => :twitter_shares
    element '.social_metrics.pinterest' => :pinterest_shares
    element '.social_metrics.linkedin' => :linkedin_shares
    element '.social_metrics.google_plusones' => :google_plusones

    elements :publishings, with: Publisher
    elements :images, with: Image
    elements :topics, with: Topic
  end
end
