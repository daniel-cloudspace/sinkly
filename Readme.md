# Abstract
A Web2.0 website about sinks. Post sinks, download sinks, post sinks via mms, learn about sinks, post sinks to facebook and twitter, have sink.ly post to your tumblr, blogspot, or wordpress. 

# Features
Post sinks: photos, manufacturer, website, info, store locations, installation locations, extract location from exif data if present
Download sinks: photos, pdf, printable output
Post sink via mms: take a photo of a sink, upload via mms, assign to user account or create user accout for phone number to be associated with user account later
Facebook & Twitter posting: full active OpenGraph tags, twitter url shortener
Tumblr, Blogspot & wordpress: automate the posting of sinks to blogs. the user gives a username and password for sink.ly, and posts on a schedule

Main Page: continuous pagination of popular sinks
Sink Show Page: continuous pagination of photos and sink_locations

# Logins
* log in
* sessions
* encrypt passwords
* secret questions
* forgotten password recovery
* Remember Me checkbox
* javascript testing password strength
* email validation

Adding Sinks:
* If no SinkType is chosen, create new SinkType

Merging Sinks:
* Drag and Drop interface to put new Sinks into existing SinkTypes, group Sinks together

Use Markov Chains to Generate Suggested Sinks:
* Keep log of user sink views and referred sink to generate Markov Chained 


* Member {sign_up, sign_in, show, edit, delete}
* Sink {Index,Add,Edit}
* Sink Show (html, json, pdf)
* SinkPhotos {Index,Show,Add,Edit,Delete}
* SinkLocation {Index,Show,Add,Edit,Delete}

Sink
* has_many_and_belongs_to :sink_locations
* has_many :sink_photos
* has_one :sink_location
* has_one :curator, :as => User
* belongs_to :sink_type

SinkType
* has_many :sinks
* has_many :sink_photos, :through => :sinks
* belongs_to :sink_category

SinkLocation
* has_many_and_belongs_to :sink
* has_many :sink_photos

SinkPhoto
* belongs_to :sink 
* belongs_to :sink_location

SinkCategory
* has_many :sinks
* has_many :sink_locations, :through => :sinks

Blogs
* has_many_and_belongs_to :sinks
* url:string, icon:string
* username:string, password:string, type:string

BlogSinks
* sink_id, blog_id


# Software Stack
* Ruby on Rails
* MySQL
* Unicorn
* Nginx
* 


# Other Cloudspace Training Projects
http://wiki.cloudspace.com/index.php/2011_Training
