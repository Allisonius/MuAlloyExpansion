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
always (all u : User | all disj v1, v2 : u.visible | some (v1.ids + v2.ids) implies ((v1.ids + v2.ids) not in u.visible.ids))
}