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


pred inv3{
all u:User, w1, w2:Work | w1 in u.profile and w2 in u.profile implies w1.ids not in w2.ids and w2.ids not in w1.ids
}