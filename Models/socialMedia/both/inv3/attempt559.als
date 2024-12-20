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
all u1:User | some p:Photo, u2:User | (u1->p in sees and p not in Ad and u2->p in posts) => u1->u2 in follows
}