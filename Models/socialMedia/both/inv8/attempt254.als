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
all u1,u2,u3:User, a:Ad | u1->a in sees and u1->a not in posts => (u2->a in posts and u1->u2 in follows) or (u3->a in posts and u1->u3 in suggested)
}