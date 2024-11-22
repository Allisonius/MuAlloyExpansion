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


pred inv7{
all x, y: User | x -> y in suggested iff (all z: User | z -> x in follows and z -> y in follows) and not x -> y in follows
}