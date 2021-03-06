# Model.create_or_update(:id => 1, :name => 'sample')
# User db/populate/development/01_file.rb for development-only data
Project.create_or_update(:id => 1, :name => "Public Rails Workshops", :short_description => "Introductory workshops designed to spread Rails knowledge", 
  :link => "http://workshops.railsbridge.org", :long_description => "", :team_lead => "Sarah Mei", :team_lead_email => "sarahmei@gmail.com",
  :site_image_file_name => 'workshop.png', :site_image_content_type => "image/png")
Project.create_or_update(:id => 2, :name => "Teaching Kids", :short_description => "Open source Rails classes for the next generation", 
  :link => "http://teachingkids.railsbridge.org", :long_description => "", :team_lead => "Sarah Allen", :team_lead_email => "sarah@ultrasaurus.com",
  :site_image_file_name => 'teachingkids.png', :site_image_content_type => "image/png")
Project.create_or_update(:id => 3, :name => "Rails Mentors", :short_description => "Sharing knowledge from experience", 
  :link => "http://www.railsmentors.org", :long_description => "", :team_lead => "Brian Hogan", :team_lead_email => "bphogan@gmail.com",
  :site_image_file_name => 'mentors.png', :site_image_content_type => "image/png")
Project.create_or_update(:id => 4, :name => "Rails Courseware", :short_description => "Open source courseware for Rails newcomers", 
  :link => "http://railstutor.org", :long_description => "", :team_lead => "Dana Jones", :team_lead_email => "djones@larkfarm.com",
  :site_image_file_name => 'tutor-1.png', :site_image_content_type => "image/png")
Project.create_or_update(:id => 5, :name => "Student Code Reviews", :short_description => "Feedback for post-secondary students", 
  :link => "http://", :long_description => "", :team_lead => "Mike Gunderloy", :team_lead_email => "mikeg1@larkfarm.com",
  :site_image_file_name => 'code.png', :site_image_content_type => "image/png")
Project.create_or_update(:id => 6, :name => "Ruby Challenge", :short_description => "Puzzle-based way to learn Ruby", 
  :link => "http://rubychallenge.com/", :long_description => "", :team_lead => "Marianna Kenesy", :team_lead_email => "kenesymarianna@gmail.com",
  :site_image_file_name => 'challenge.png', :site_image_content_type => "image/png")
Project.create_or_update(:id => 7, :name => "RailsBridge Wiki", :short_description => "Everything About RailsBridge", 
  :link => "http://wiki.railsbridge.org", :long_description => "", :team_lead => "Jeff Schoolcraft", :team_lead_email => "jeffrey.schoolcraft@gmail.com",
  :site_image_file_name => 'wiki-1.png', :site_image_content_type => "image/png")
Project.create_or_update(:id => 8, :name => "RailsBridge Site", :short_description => "The main RailsBridge web site", 
  :link => "http://railsbridge.org", :long_description => "", :team_lead => "Elad Meidar", :team_lead_email => "eize.sus@gmail.com",
  :site_image_file_name => 'site.png', :site_image_content_type => "image/png")


# Copy starting images
# TODO: eladmeidar: on my machine, there was no /public/system/site_images, only /public/site_images. i removed the "system" from
# the 2nd File.join statement to make it run. restored after rake db:populate was successful.
FileUtils.cp_r(File.join(Rails.root, "db", "populate", "site_images") + "/", File.join(Rails.root, "public", "system", "site_images"))