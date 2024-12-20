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


pred inv6{
all u:User|all d:Day| all p:Photo| u in Influencer implies (u->p in posts and p->d in date)
}