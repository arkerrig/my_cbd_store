require 'spree/core'

module Spree
    AppConfiguration.class_eval do
        preference :mails_from, :string, default: 'spree@example.com'
        preference :enable_mail_delivery, :boolean, default: true
        preference :mail_bcc, :string, default: 'spree@example.com'
        preference :intercept_email, :string, default: nil

        # Default smtp settings
        preference :mail_host, :string, default: 'smtp.mailgun.org'
        preference :mail_domain, :string, default: 'cbdlemontree.com'
        preference :mail_port, :integer, default: 587
        preference :secure_connection_type, :string#, default: Core::MailSettings::SECURE_CONNECTION_TYPES[0]
        preference :mail_auth_type, :string#, default: Core::MailSettings::MAIL_AUTH[0]
        preference :smtp_username, :string, default: 'postmaster@sandbox1948c2174da64c5b94b2f8bd3fb787ca.mailgun.org'
        preference :smtp_password, :string, default: 'd9961faff44f07e84b8d06211e197acd-1b6eb03d-6f6e8464'

        def override_actionmailer_config
            raise 'override_actionmailer_config has been removed.' \
                'actionmailer\'s config is always overridden when spree_mail_settings is included'
        end
        alias_method :override_actionmailer_config=, :override_actionmailer_config
    end
end

