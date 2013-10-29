# Title: ImplicitLayout
# Description: Set default layout for posts and pages
#
module ImplicitLayoutForPost
  def read_yaml(*args)
    super
    self.data['layout'] ||= 'post'
  end
end
Jekyll::Post.send(:include, ImplicitLayoutForPost)

module ImplicitLayoutForPage
  def read_yaml(*args)
    super
    self.data['layout'] ||= 'page'
  end
end
Jekyll::Page.send(:include, ImplicitLayoutForPage)
