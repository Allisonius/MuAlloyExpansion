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
all x0,x1:User | x0 in x1.suggested implies some x2:User | x2 in x1.follows and x0 in x2.follows
}