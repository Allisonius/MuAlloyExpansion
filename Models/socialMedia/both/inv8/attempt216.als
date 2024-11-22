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
all u:User,v:User,p:Photo | p in Ad and u in sees.p and v in posts.p implies u in follows.v or u in suggested.v
}