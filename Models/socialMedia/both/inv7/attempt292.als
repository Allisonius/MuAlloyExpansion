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
all u,y,z: User | y in suggested.u implies (( y not in follows.u) and (y in follows.z) and (z in follows.u))
}