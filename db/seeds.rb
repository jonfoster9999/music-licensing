# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
types = [
	"Audio Projects",
	"Composition and Sound Recordings",
	"Corporate, Theater and Competition",
	"Film Sync",
	"Games and Software",
	"Internet Website, Flash",
	"Mechanical Royalty License (Up to 5 Minutes)",
	"Mechanical Royalty License (Over 5 Minutes)",
	"Music Compilation (CD, DVD, PC Audio)",
	"Products and Toys",
	"Public space (restaurants, Trade shows, Retail spaces)",
	"Radio Ad or Production",
	"Sampling, Remixes, Covers and Derivative Works",
	"Single Units (Wedding video, small quantity for profit)",
	"Slide Show or PowerPoint",
	"Software - Multimedia, All platforms, any use",
	"Telephone or Music On Hold",
	"TV Advertising",
	"TV Show Sync License",
	"Video (Music for Video, DVD or CDROM)"
]
types.each do |type_string|
	License.create(:name => type_string)
end
l = License.find_by(:name => "Audio Projects")
l.details = [
	{:name => "Music Length", :options => 
		[
			{:name => "No More Than 25 Seconds", :price => 90, :sign => "+"},
			{:name => "Entire Song", :price => 116, :sign => "+"}
		]
	},
	{:name => "Theme Song", :options => 
		[
			{:name => "Will not be a theme song", :price => 90, :sign => "+"},
			{:name => "Will be a theme song", :price => 220, :sign => "+"}

		]
	},
	{:name => "Use", :options => 
		[
			{:name => "Background", :price => 80, :sign => "+"},
			{:name => "Foreground", :price => 262, :sign => "+"}

		]
	}
]
l.save

l = License.find_by(:name => "Composition and Sound Recordings")
l.details = [
	{:name => "Number of Phonorecord Copies", :options => 
		[
			{:name => "1,000", :price => 100, :sign => "+"},
			{:name => "2,500", :price => 200, :sign => "+"},
			{:name => "5,000", :price => 300, :sign => "+"},
			{:name => "10,000", :price => 400, :sign => "+"},
			{:name => "15,000", :price => 500, :sign => "+"},
			{:name => "25,000", :price => 600, :sign => "+"},
			{:name => "50,000", :price => 700, :sign => "+"},
			{:name => "100,000", :price => 800, :sign => "+"},
			{:name => "Over 100,000 (Request Quote)", :price => 100, :sign => "+"}
		]
	},
	{:name => "Organization Type", :options => 
		[
			{:name => "Non-Profit, Educational", :price => 100, :sign => "+"},
			{:name => "Independent Media Production", :price => 200, :sign => "+"},
			{:name => "Business/Corporate - Internal Use", :price => 300, :sign => "+"},
			{:name => "Business/Corp - External For Profit", :price => 400, :sign => "+"},
			{:name => "Commercial Media Production", :price => 500, :sign => "+"}
		]
	},
	{:name => "Song Use", :options => 
		[
			{:name => "Composition", :price => 100, :sign => "+"},
			{:name => "Composition & Sound Recording", :price => 200, :sign => "+"}

		]
	},
	{:name => "Number Tracks", :options => 
		[
			{:name => "1 Tracks", :price => 100, :sign => "+"},
			{:name => "2 Tracks", :price => 200, :sign => "+"},
			{:name => "3 Tracks", :price => 340, :sign => "+"},
			{:name => "4 Tracks", :price => 420, :sign => "+"},
			{:name => "5 Tracks", :price => 553, :sign => "+"},
			{:name => "6 Tracks", :price => 600, :sign => "+"},
			{:name => "7 Tracks", :price => 700, :sign => "+"},
			{:name => "8 Tracks", :price => 840, :sign => "+"},
			{:name => "9 Tracks", :price => 960, :sign => "+"},
			{:name => "10 Tracks", :price => 1045, :sign => "+"},
			{:name => "10+ Tracks (Request Quote)", :price => 200, :sign => "+"}

		]
	}
]
l.save

l = License.find_by(:name => "Corporate, Theater and Competition")
l.details = [
	{:name => "Audience Type", :options => 
		[
			{:name => "In House", :price => 100, :sign => "+"},
			{:name => "Business-to-Business", :price => 100, :sign => "+"},
			{:name => "Public Use", :price => 100, :sign => "+"}
		]
	},
	{:name => "License Period", :options => 
		[
			{:name => "1 Week", :price => 100, :sign => "+"},
			{:name => "1 Month", :price => 200, :sign => "+"},
			{:name => "3 Months", :price => 200, :sign => "+"},
			{:name => "1 Year", :price => 200, :sign => "+"},
			{:name => "3 Years", :price => 200, :sign => "+"}
		]
	},
	{:name => "Audience Size", :options => 
		[
			{:name => "1 to 100", :price => 100, :sign => "+"},
			{:name => "101 to 500", :price => 200, :sign => "+"},
			{:name => "501 to 2000", :price => 200, :sign => "+"},
			{:name => "Unlimited", :price => 200, :sign => "+"}

		]
	},
	{:name => "Number of Tracks", :options => 
		[
			{:name => "1 Tracks", :price => 100, :sign => "+"},
			{:name => "2 Tracks", :price => 100, :sign => "+"},
			{:name => "3 Tracks", :price => 100, :sign => "+"},
			{:name => "4 Or More Tracks (Request Quote)", :price => 200, :sign => "+"}

		]
	}
]
l.save

l = License.find_by(:name => "Film Sync")
l.details = [
	{:name => "Project Type", :options => 
		[
			{:name => "For Profit", :price => 100, :sign => "+"},
			{:name => "Non-Profit", :price => 100, :sign => "+"},
			{:name => "Student Film", :price => 100, :sign => "+"}
		]
	},
	{:name => "Distribution", :options => 
		[
			{:name => "Festivals Only", :price => 100, :sign => "+"},
			{:name => "Theatrical(USA)", :price => 200, :sign => "+"},
			{:name => "Theatrical(Local/Regional)", :price => 200, :sign => "+"},
			{:name => "Internet Only", :price => 200, :sign => "+"},
			{:name => "Theatrical(Worldwide)", :price => 200, :sign => "+"},
			{:name => "Theatrical(Non-USA)", :price => 200, :sign => "+"}
		]
	},
	{:name => "Trailer Usage", :options => 
		[
			{:name => "Yes", :price => 100, :sign => "+"},
			{:name => "No", :price => 200, :sign => "+"}

		]
	},
	{:name => "License Duration", :options => 
		[
			{:name => "Up To One Year", :price => 100, :sign => "+"},
			{:name => "Perpetuity", :price => 100, :sign => "+"}
		]
	},
	{:name => "Usage Type", :options => 
		[
			{:name => "Background or Source Music", :price => 100, :sign => "+"},
			{:name => "Feature Music", :price => 100, :sign => "+"},
			{:name => "Theme / Credits Music", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Games and Software")
l.details = [
	{:name => "Music Length", :options => 
		[
			{:name => "No more than 45 seconds", :price => 100, :sign => "+"},
			{:name => "Entire Song", :price => 100, :sign => "+"}
		]
	},
	{:name => "Theme Song", :options => 
		[
			{:name => "Will not be theme song", :price => 100, :sign => "+"},
			{:name => "Will be theme song", :price => 200, :sign => "+"}
		]
	},
	{:name => "Advertising Use", :options => 
		[
			{:name => "Song will be used in advertising", :price => 100, :sign => "+"},
			{:name => "Song will not be used in advertising", :price => 200, :sign => "+"}

		]
	},
	{:name => "Number of Hardware Platforms", :options => 
		[
			{:name => "1 hardware platform", :price => 100, :sign => "+"},
			{:name => "2 hardware platforms", :price => 100, :sign => "+"},
			{:name => "3 hardware platforms", :price => 100, :sign => "+"},
			{:name => "Unlimited hardware platforms", :price => 100, :sign => "+"}
		]
	},
	{:name => "Units Manufactured or Distributed", :options => 
		[
			{:name => "Up to 50,000", :price => 100, :sign => "+"},
			{:name => "Up to 100,000", :price => 100, :sign => "+"},
			{:name => "Up to 500,000", :price => 100, :sign => "+"},
			{:name => "Over 500,000(Price negotiable)", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Internet Website, Flash")
l.details = [
	{:name => "Music Length", :options => 
		[
			{:name => "No more than 30 seconds", :price => 100, :sign => "+"},
			{:name => "Entire Song", :price => 100, :sign => "+"}
		]
	},
	{:name => "Theme Song", :options => 
		[
			{:name => "Will not be theme song", :price => 100, :sign => "+"},
			{:name => "Will be theme song", :price => 200, :sign => "+"}
		]
	},
	{:name => "Looped", :options => 
		[
			{:name => "No Looping", :price => 100, :sign => "+"},
			{:name => "Music will be looped", :price => 200, :sign => "+"}

		]
	},
	{:name => "Type of Web Site", :options => 
		[
			{:name => "Commercial Podcast", :price => 100, :sign => "+"},
			{:name => "Personal Webpage", :price => 100, :sign => "+"},
			{:name => "Business Webpage", :price => 100, :sign => "+"},
			{:name => "Non-profit Website", :price => 100, :sign => "+"},
			{:name => "Paid Subscription Site", :price => 100, :sign => "+"}
		]
	},
	{:name => "License Duration", :options => 
		[
			{:name => "1 Week", :price => 100, :sign => "+"},
			{:name => "1 Month", :price => 100, :sign => "+"},
			{:name => "3 Months", :price => 100, :sign => "+"},
			{:name => "6 Months", :price => 100, :sign => "+"},
			{:name => "1 Year", :price => 100, :sign => "+"},
			{:name => "Perpetuity", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Mechanical Royalty License (Up to 5 Minutes)")
l.details = [
	{:name => "Number of Copies (you plan to record and/or sell)", :options => 
		[
			{:name => "100 - 500000", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Mechanical Royalty License (Over 5 Minutes)")
l.details = [
	{:name => "Length of your recording (Round to nearest minute)", :options => 
		[
			{:name => "6 - 60", :price => 100, :sign => "+"}\
		]
	},
	{:name => " Number of copies (you plan to record and/or sell)", :options => 
		[
			{:name => "100 - 500000", :price => 100, :sign => "+"}\
		]
	}
]
l.save

l = License.find_by(:name => "Music Compilation (CD, DVD, PC Audio)")
l.details = [
	{:name => "Max. Units Manufactured or Distributed", :options => 
		[
			{:name => "500 Units", :price => 100, :sign => "+"},
			{:name => "1,000 Units", :price => 100, :sign => "+"},
			{:name => "2,000 Units", :price => 100, :sign => "+"},
			{:name => "5,000 Units", :price => 100, :sign => "+"},
			{:name => "10,000 Units", :price => 100, :sign => "+"},
			{:name => "20,000 Units", :price => 100, :sign => "+"},
			{:name => "Over 20,000 Units (Request Custom Quote)", :price => 100, :sign => "+"}
		]
	},
	{:name => "Number of tracks", :options => 
		[
			{:name => "1 tracks", :price => 100, :sign => "+"},
			{:name => "2 tracks", :price => 100, :sign => "+"},
			{:name => "3 tracks", :price => 100, :sign => "+"},
			{:name => "4 tracks", :price => 100, :sign => "+"},
			{:name => "5 tracks", :price => 100, :sign => "+"},
			{:name => "6 tracks", :price => 100, :sign => "+"},
			{:name => "7 tracks", :price => 100, :sign => "+"},
			{:name => "8 tracks", :price => 100, :sign => "+"},
			{:name => "9 tracks", :price => 100, :sign => "+"},
			{:name => "10 tracks", :price => 100, :sign => "+"},
			{:name => "11 or more tracks (Request Custom Quote)", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Products and Toys")
l.details = [
	{:name => "Max. Units Manufactured or Distributed", :options => 
		[
			{:name => "1,000 Units", :price => 100, :sign => "+"},
			{:name => "2,500 Units", :price => 100, :sign => "+"},
			{:name => "5,000 Units", :price => 100, :sign => "+"},
			{:name => "10,000 Units", :price => 100, :sign => "+"},
			{:name => "15,000 Units", :price => 100, :sign => "+"},
			{:name => "25,000 Units", :price => 100, :sign => "+"},
			{:name => "50,000 Units", :price => 100, :sign => "+"},
			{:name => "100,000 Units", :price => 100, :sign => "+"},
			{:name => "Over 100,000 Units (Request Custom Quote)", :price => 100, :sign => "+"}
		]
	},
	{:name => "Organization Type", :options => 
		[
			{:name => "Non-Profit, Educational", :price => 100, :sign => "+"},
			{:name => "Independent Media Corporation", :price => 100, :sign => "+"},
			{:name => "Business/Corporate, Internal Use", :price => 100, :sign => "+"},
			{:name => "Business/Corporate, External for profit", :price => 100, :sign => "+"},
			{:name => "Commercial, Media Production", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Music Compilation (CD, DVD, PC Audio)")
l.details = [
	{:name => "Max. Units Manufactured or Distributed", :options => 
		[
			{:name => "500 Units", :price => 100, :sign => "+"},
			{:name => "1,000 Units", :price => 100, :sign => "+"},
			{:name => "2,000 Units", :price => 100, :sign => "+"},
			{:name => "5,000 Units", :price => 100, :sign => "+"},
			{:name => "10,000 Units", :price => 100, :sign => "+"},
			{:name => "20,000 Units", :price => 100, :sign => "+"},
			{:name => "Over 20,000 Units (Request Custom Quote)", :price => 100, :sign => "+"}
		]
	},
	{:name => "Number of tracks", :options => 
		[
			{:name => "1 tracks", :price => 100, :sign => "+"},
			{:name => "2 tracks", :price => 100, :sign => "+"},
			{:name => "3 tracks", :price => 100, :sign => "+"},
			{:name => "4 tracks", :price => 100, :sign => "+"},
			{:name => "5 tracks", :price => 100, :sign => "+"},
			{:name => "6 tracks", :price => 100, :sign => "+"},
			{:name => "7 tracks", :price => 100, :sign => "+"},
			{:name => "8 tracks", :price => 100, :sign => "+"},
			{:name => "9 tracks", :price => 100, :sign => "+"},
			{:name => "10 tracks", :price => 100, :sign => "+"},
			{:name => "11 or more tracks (Request Custom Quote)", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Public space (restaurants, Trade shows, Retail spaces)")
l.details = [
	{:name => "Number of Locations", :options => 
		[
			{:name => "1", :price => 100, :sign => "+"},
			{:name => "2 - 10", :price => 100, :sign => "+"},
			{:name => "11 - 50", :price => 100, :sign => "+"},
			{:name => "51 - 100", :price => 100, :sign => "+"},
			{:name => "101 - 500", :price => 100, :sign => "+"},
			{:name => "Over 500 (Request Custom Quote)", :price => 100, :sign => "+"}
		]
	},
	{:name => "License Duration", :options => 
		[
			{:name => "3 Months", :price => 100, :sign => "+"},
			{:name => "1 Year", :price => 100, :sign => "+"},
			{:name => "3 Years", :price => 100, :sign => "+"},
			{:name => "Unlimited Duration", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Radio Ad or Production")
l.details = [
	{:name => "Music Length", :options => 
		[
			{:name => "No more than 15 seconds of song", :price => 100, :sign => "+"},
			{:name => "No more than 30 seconds of song", :price => 100, :sign => "+"}
		]
	},
	{:name => "License Duration", :options => 
		[
			{:name => "Less than 3 months", :price => 100, :sign => "+"},
			{:name => "1 Year", :price => 100, :sign => "+"},
			{:name => "Perpetuity", :price => 100, :sign => "+"}
		]
	},
	{:name => "Territory", :options => 
		[
			{:name => "One individual market (i.e. local)", :price => 100, :sign => "+"},
			{:name => "Regional (Major Urban Center or > 3 local markets)", :price => 100, :sign => "+"},
			{:name => "Entire USA (National)", :price => 100, :sign => "+"},
			{:name => "USA National + Canada", :price => 100, :sign => "+"},
			{:name => "Worldwide", :price => 100, :sign => "+"},
			{:name => "World, but not USA or Canada", :price => 100, :sign => "+"},
			{:name => "Europe", :price => 100, :sign => "+"},
			{:name => "Australia and New Zealand", :price => 100, :sign => "+"},
			{:name => "Asia", :price => 100, :sign => "+"},
			{:name => "Other Single Country", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Sampling, Remixes, Covers and Derivative Works")
l.details = [
	{:name => "Maximum Number of Units being manufactured or distributed", :options => 
		[
			{:name => "500 units", :price => 100, :sign => "+"},
			{:name => "1,000 units", :price => 100, :sign => "+"},
			{:name => "2,000 units", :price => 100, :sign => "+"},
			{:name => "5,000 units", :price => 100, :sign => "+"},
			{:name => "10,000 units", :price => 100, :sign => "+"},
			{:name => "20,000 units", :price => 100, :sign => "+"},
			{:name => "50,000 units", :price => 100, :sign => "+"},
			{:name => "100,000 units", :price => 100, :sign => "+"},
			{:name => "over 100,000 units (custom quote)", :price => 100, :sign => "+"}			
		]
	}
]
l.save

l = License.find_by(:name => "Single Units (Wedding video, small quantity for profit)")
l.details = [
	{:name => "How Many Songs", :options => 
		[
			{:name => "1 Song", :price => 100, :sign => "+"},
			{:name => "2 Songs", :price => 100, :sign => "+"},
			{:name => "3 Songs", :price => 100, :sign => "+"},
			{:name => "Up to 10 Songs", :price => 100, :sign => "+"},
			{:name => "11+ Songs (Custom quote)", :price => 100, :sign => "+"}		
		]
	},
	{:name => "Units Manufactured or Distributed", :options => 
		[
			{:name => "50 Copies", :price => 100, :sign => "+"},
			{:name => "100 Copies", :price => 100, :sign => "+"},
			{:name => "200 Copies", :price => 100, :sign => "+"},
			{:name => "300 Copies", :price => 100, :sign => "+"},
			{:name => "400 Copies", :price => 100, :sign => "+"},
			{:name => "500 Copies", :price => 100, :sign => "+"},
			{:name => "1,000 Copies", :price => 100, :sign => "+"},
			{:name => "10,000 Copies", :price => 100, :sign => "+"},
			{:name => "Over 10,000 (Request Custom Quote)", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Slide Show or PowerPoint")
l.details = [
	{:name => "License Term", :options => 
		[
			{:name => "One Time Use", :price => 100, :sign => "+"},
			{:name => "Up to a month", :price => 100, :sign => "+"},
			{:name => "Up to one year", :price => 100, :sign => "+"},
			{:name => "Perpetuity", :price => 100, :sign => "+"}		
		]
	},
	{:name => "Description", :options => 
		[
			{:name => "Internal Use Only", :price => 100, :sign => "+"},
			{:name => "Available to the public (Including Internet)", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Software - Multimedia, All platforms, any use")
l.details = [
	{:name => "License Term", :options => 
		[
			{:name => "Up to 5 Years", :price => 100, :sign => "+"},
			{:name => "Life of copyright", :price => 100, :sign => "+"}
		]
	},
	{:name => "Organization Type", :options => 
		[
			{:name => "Non-Profit, Educational", :price => 100, :sign => "+"},
			{:name => "Independent Media Production", :price => 100, :sign => "+"},
			{:name => "Business/Corporate - internal Use", :price => 100, :sign => "+"},
			{:name => "Business/Corporate - external for profit", :price => 100, :sign => "+"},
			{:name => "Commercial - media production", :price => 100, :sign => "+"}
		]
	},
	{:name => "Song Use", :options => 
		[
			{:name => "Single use", :price => 100, :sign => "+"},
			{:name => "Theme, multiple use", :price => 100, :sign => "+"}
		]
	},
	{:name => "Song Use Duration", :options => 
		[
			{:name => "Up to 60 seconds", :price => 100, :sign => "+"},
			{:name => "Entire song", :price => 100, :sign => "+"}
		]
	},
	{:name => "Territory", :options => 
		[
			{:name => "National", :price => 100, :sign => "+"},
			{:name => "World wide (global)", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Telephone or Music On Hold")
l.details = [
	{:name => "Type of Use", :options => 
		[
			{:name => "Personal Use (Single family or home office)", :price => 100, :sign => "+"},
			{:name => "Small Company (Less than 10 people)", :price => 100, :sign => "+"},
			{:name => "Medium Company (Less than 50 people)", :price => 100, :sign => "+"}
		]
	},
	{:name => "License Duration", :options => 
		[
			{:name => "1 Year", :price => 100, :sign => "+"},
			{:name => "3 Years", :price => 100, :sign => "+"},
			{:name => "Unlimited", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "TV Advertising")
l.details = [
	{:name => "Music Length", :options => 
		[
			{:name => "No more than 15 seconds of song", :price => 100, :sign => "+"},
			{:name => "No more than 30 seconds of song", :price => 100, :sign => "+"},
			{:name => "Entire Song", :price => 100, :sign => "+"}
		]
	},
	{:name => "License Duration", :options => 
		[
			{:name => "Less than 3 months", :price => 100, :sign => "+"},
			{:name => "1 Year", :price => 100, :sign => "+"},
			{:name => "Perpetuity", :price => 100, :sign => "+"}
		]
	},
	{:name => "Territory", :options => 
		[
			{:name => "One individual market (i.e. local)", :price => 100, :sign => "+"},
			{:name => "Regional (Major Urban Center or > 3 local markets)", :price => 100, :sign => "+"},
			{:name => "Entire USA (National)", :price => 100, :sign => "+"},
			{:name => "USA National + Canada", :price => 100, :sign => "+"},
			{:name => "Worldwide", :price => 100, :sign => "+"},
			{:name => "World, but not USA or Canada", :price => 100, :sign => "+"},
			{:name => "Europe", :price => 100, :sign => "+"},
			{:name => "Australia and New Zealand", :price => 100, :sign => "+"},
			{:name => "Asia", :price => 100, :sign => "+"},
			{:name => "Other Single Country", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "TV Show Sync License")
l.details = [
	{:name => "License Duration", :options => 
		[
			{:name => "1 Year", :price => 100, :sign => "+"},
			{:name => "5 Years", :price => 100, :sign => "+"},
			{:name => "Perpetuity", :price => 100, :sign => "+"}
		]
	},
	{:name => "Music Length", :options => 
		[
			{:name => "Less than 45 seconds", :price => 100, :sign => "+"},
			{:name => "Entire Song", :price => 100, :sign => "+"}
		]
	},
	{:name => "Usage Type", :options => 
		[
			{:name => "Background or Source", :price => 100, :sign => "+"},
			{:name => "Feature", :price => 100, :sign => "+"},
			{:name => "Theme", :price => 100, :sign => "+"}
		]
	},
	{:name => "Media Type", :options => 
		[
			{:name => "Basic Cable Only", :price => 100, :sign => "+"},
			{:name => "Free TV only", :price => 100, :sign => "+"},
			{:name => "All TV Rights", :price => 100, :sign => "+"},
			{:name => "Free TV and basic cable", :price => 100, :sign => "+"},
			{:name => "Pay cable and subscription TV", :price => 100, :sign => "+"},
			{:name => "Public and educational TV only", :price => 100, :sign => "+"}
		]
	},
	{:name => "Home Video Rights", :options => 
		[
			{:name => "Not included", :price => 100, :sign => "+"},
			{:name => "Included home video rights", :price => 100, :sign => "+"}
		]
	},
	{:name => "Foreign Theatrical Rights", :options => 
		[
			{:name => "Not included", :price => 100, :sign => "+"},
			{:name => "Included foreign theatrical rights", :price => 100, :sign => "+"}
		]
	},
	{:name => "Territory", :options => 
		[
			{:name => "Local productions (urban center)", :price => 100, :sign => "+"},
			{:name => "Local productions (not an urban center)", :price => 100, :sign => "+"},
			{:name => "Worldwide", :price => 100, :sign => "+"},
			{:name => "Entire USA (National)", :price => 100, :sign => "+"},
			{:name => "USA national + Canada", :price => 100, :sign => "+"},
			{:name => "World (but not USA or Canada)", :price => 100, :sign => "+"},
			{:name => "UK and Ireland", :price => 100, :sign => "+"},
			{:name => "Germany, Switzerland and Austria", :price => 100, :sign => "+"},
			{:name => "Asia", :price => 100, :sign => "+"},
			{:name => "South America", :price => 100, :sign => "+"},
			{:name => "India", :price => 100, :sign => "+"},
			{:name => "Australia", :price => 100, :sign => "+"},
			{:name => "Scandinavia", :price => 100, :sign => "+"},
			{:name => "Benelux", :price => 100, :sign => "+"},
			{:name => "France", :price => 100, :sign => "+"},
			{:name => "Japan", :price => 100, :sign => "+"},
			{:name => "2 Territories from above", :price => 100, :sign => "+"},
			{:name => "3 Territories from abouve", :price => 100, :sign => "+"},
			{:name => "Other Single Country", :price => 100, :sign => "+"}
		]
	}
]
l.save

l = License.find_by(:name => "Video (Music for Video, DVD or CDROM)")
l.details = [
	{:name => "Music Length", :options => 
		[
			{:name => "Less than 45 seconds", :price => 100, :sign => "+"},
			{:name => "Entire Song", :price => 100, :sign => "+"}
		]
	},
	{:name => "Theme Song", :options => 
		[
			{:name => "Will Not Be Theme Song", :price => 100, :sign => "+"},
			{:name => "Will Be Theme Song", :price => 100, :sign => "+"}
		]
	},
	{:name => "Distribution", :options => 
		[
			{:name => "Internal Use Only", :price => 100, :sign => "+"},
			{:name => "Available to the public on websites for sale", :price => 100, :sign => "+"}
		]
	}
]
l.save

AlbumCover.create(:file_name => "aclef.jpg")