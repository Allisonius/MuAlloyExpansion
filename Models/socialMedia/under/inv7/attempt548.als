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
all x,x1:User | x1 in x.suggested implies some x3:User | x1 in x3.follows and x3 in x.follows and x1 not in x.follows and x1!=x
}