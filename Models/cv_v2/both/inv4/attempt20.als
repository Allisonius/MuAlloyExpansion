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
always (all u : User, disj v1, v2 : u.visible, v : u.profile | (no (v1.ids & v2.ids)) and (v1.ids + v2.ids not in v.ids))
}