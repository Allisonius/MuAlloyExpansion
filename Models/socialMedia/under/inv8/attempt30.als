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
all x: User, y: Photo | y in x.sees and y in Ad implies some z: User | z in x.follows or z in x.suggested
}