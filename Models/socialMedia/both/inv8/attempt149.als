sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}


pred inv8{
all u:User,v:Influencer | u in sees.Ad and v in posts.Ad implies u in follows.v or u in suggested.v
}