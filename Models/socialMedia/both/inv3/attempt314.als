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
all a,u,f,s : univ | u in User and u-> f in follows and u -> s in sees and a in Ad implies s!=a
}