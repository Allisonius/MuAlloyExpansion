abstract sig Source {}
sig User extends Source {
    profile : set Work,
    visible : set Work
}
sig Institution extends Source {}

sig Id {}
sig Work {
    ids : some Id,
    source : one Source
}


pred inv4{
all u:User, w1,w2:Work, p:u.profile |(w1.ids=w2.ids)and(w1 in p and w2 in p) implies (w1 not in u.visible or w2 not in u.visible)
}