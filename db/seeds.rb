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
	"Custom License",
	"Film Sync",
	"Games and Software",
	"Internet Website, Flash",
	"Mechanical Royalty License (Up to 5 Minutes)",
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
			{:name => "No More Than 25 Seconds", :price => 90},
			{:name => "Entire Song", :price => 116}
		]
	},
	{:name => "Theme Song", :options => 
		[
			{:name => "Will not be a theme song", :price => 90},
			{:name => "Will be a theme song", :price => 220}

		]
	},
	{:name => "Use", :options => 
		[
			{:name => "Background", :price => 80},
			{:name => "Foreground", :price => 262}

		]
	}
]
l.save

l = License.find_by(:name => "Composition and Sound Recordings")
l.details = [
	{:name => "Number of Phonorecord Copies", :options => 
		[
			{:name => "1,000", :price => 100},
			{:name => "2,500", :price => 100},
			{:name => "5,000", :price => 100},
			{:name => "10,000", :price => 100},
			{:name => "15,000", :price => 100},
			{:name => "25,000", :price => 100},
			{:name => "50,000", :price => 100},
			{:name => "100,000", :price => 100},
			{:name => "Over 100,000 (Request Quote)", :price => 100}
		]
	},
	{:name => "Organization Type", :options => 
		[
			{:name => "Non-Profit, Educational", :price => 100},
			{:name => "Independent Media Production", :price => 200},
			{:name => "Business/Corporate - Internal Use", :price => 200},
			{:name => "Business/Corp - External For Profit", :price => 200},
			{:name => "Commercial Media Production", :price => 200}
		]
	},
	{:name => "Song Use", :options => 
		[
			{:name => "Composition", :price => 100},
			{:name => "Composition & Sound Recording", :price => 200}

		]
	},
	{:name => "Number Tracks", :options => 
		[
			{:name => "1 Tracks", :price => 100},
			{:name => "2 Tracks", :price => 100},
			{:name => "3 Tracks", :price => 100},
			{:name => "4 Tracks", :price => 100},
			{:name => "5 Tracks", :price => 100},
			{:name => "6 Tracks", :price => 100},
			{:name => "7 Tracks", :price => 100},
			{:name => "8 Tracks", :price => 100},
			{:name => "9 Tracks", :price => 100},
			{:name => "10 Tracks", :price => 100},
			{:name => "10+ Tracks (Request Quote)", :price => 200}

		]
	}
]
l.save