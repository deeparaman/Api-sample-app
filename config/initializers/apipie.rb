Apipie.configure do |config|
  config.app_name                = "SampleApi"
  config.api_base_url            = "/api"
  config.doc_base_url            = "/apipie"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
  config.languages = ['en']
  config.default_locale = 'en'
  config.locale = lambda { |loc| loc ? I18n.locale = loc : I18n.locale }
  config.translate = lambda do |str, loc|
    return '' if str.blank?
    I18n.t str, locale: loc, scope: 'doc'
  end
end
