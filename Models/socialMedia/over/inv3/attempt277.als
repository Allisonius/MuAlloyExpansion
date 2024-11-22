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


pred inv3{
all x:Photo,y:User| x not in Ad and x in y.sees implies some z:User| x in z.posts and z in x.follows
}