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
      charset: 'utf-8',
      separator: '|',
      description: '全国の鉄道写真を共有するサービスです。',
      keywords: '鉄道, 写真, 電車, Train, 駅, 路線',
      canonical: "https://trainspotter.onrender.com",
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: "https://trainspotter.onrender.com",
        image: image_url('ogp.png'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@',
        image: image_url('ogp.png')
      }
    }
  end
end
