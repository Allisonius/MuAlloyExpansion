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
all x, y: User, z:Ad| x->z in sees implies (x-> y in follows and y-> z in posts) or (x->y in suggested and y-> z in posts)
}