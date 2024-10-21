module ApplicationHelper
  def flash_background_color(type)
    case type.to_sym
    when :danger then 'bg-customgreen'
    when :success then 'bg-customgreen'
    when :error then 'bg-customorange'
    else 'bg-gray-500'
    end
  end

  def default_meta_tags
    {
      site: 'Trainspotter',
      title: '',
      reverse: true,
      separator: '',
      description: '全国の鉄道写真を共有するサービスです。',
      keywords: '鉄道, 写真, 電車, Train, 駅, 路線',
      canonical: https://trainspotter.onrender.com,
      og: {
        title: :title,
        description: :description,
        type: 'website',
        url: https://trainspotter.onrender.com,
        image: image_url('ogp.png'),
        site_name: ''
      },
      twitter: {
        card: 'summary_large_image',
        site: '@',
        title: 'Trainspotter',
        description: :description,
        image: image_url('ogp.png')
      }
    }
  end
end
