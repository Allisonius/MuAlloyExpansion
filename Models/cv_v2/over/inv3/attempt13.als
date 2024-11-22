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
all s: Source | all disj w, w1: ((source.s) & User.profile) | no (w.ids & w1.ids)
}