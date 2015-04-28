class CandidateMailer < ActionMailer::Base
  default from: "report@railsgirls.md"
  layout 'mailer'

  def report_new_candidate_email(profile)
    @profile = profile
    mail(
      :to => Settings.admin_email,
      :subject => "New Candidate has been registered!"
    )
  end
end
