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


pred inv2{
all u:User, w:Work | w in u.profile implies (some i:Institution | u in w.source or i in w.source)
}