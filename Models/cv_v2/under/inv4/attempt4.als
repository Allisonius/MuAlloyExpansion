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
always (all u : User | all disj vis : u.visible | no (vis.ids & (u.profile - vis)))
}