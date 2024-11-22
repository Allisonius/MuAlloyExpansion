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


pred inv1{
one x:User | all p:Photo | x->p in posts
all x,y:User| all p:Photo | x->p in posts and y->p in posts implies x=y

all p : Photo | one u:User | u->p in posts
all p: Photo | all u,v: User |u->p in posts and v->p in posts implies u=v
}