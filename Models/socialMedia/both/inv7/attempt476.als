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
all u,y: User |some z : User| y in u.suggested iff (( y not in u.follows) and (y in follows.z) and (z in follows.u))
}