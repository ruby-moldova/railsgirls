
Rails.application.config.action_mailer.perform_deliveries = true
Rails.application.config.action_mailer.delivery_method = :mailgun
Rails.application.config.action_mailer.mailgun_settings = {
  :api_key => Settings.mailgun.api_key,
  :domain  => Settings.mailgun.domain
}
