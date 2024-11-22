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
all u,i:User, a:Ad| a in u.sees implies a in i.posts and (i in u.follows or i in u.suggested)
}