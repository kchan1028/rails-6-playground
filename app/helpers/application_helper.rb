module ApplicationHelper
  def default_meta_tags
    {
      site: 'playground.dev',
      title: 'Rails 6 Playground',
      reverse: true,
      separator: '|',
      description: 'Rails 6 Playground',
      keywords: '',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      og: {
        site_name: 'playground.dev',
        title: 'Rails 6 Playground',
        description: 'Rails 6 Playground', 
        type: 'website',
        url: request.original_url,
      }
    }
  end
end
