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
all u: User |all ad: Photo | u -> ad in sees implies ad in Ad and ad in u.follows.posts or ad in u.suggested.posts
}