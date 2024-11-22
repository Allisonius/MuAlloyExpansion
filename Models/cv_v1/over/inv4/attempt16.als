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
all w1,w2:Work, u:User | w1 in u.visible and w2 in u.visible implies w1=w2
}