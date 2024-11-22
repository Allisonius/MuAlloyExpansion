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
all u,f,p,s : univ | u in User and u-> f in follows and f -> p in posts and u -> s in sees implies s = p
}