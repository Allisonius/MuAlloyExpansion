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
all x, y: User | x -> y in suggested implies (x!= y and not x -> y in follows and some z: User | x -> z in follows and z -> y in follows )
}