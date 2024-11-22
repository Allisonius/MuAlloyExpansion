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
all x: User, y: Photo| y not in Ad and x->y in sees implies (some z: User | z->y in posts and x->y in follows)
all x: User, y: Ad | x->y in sees
}