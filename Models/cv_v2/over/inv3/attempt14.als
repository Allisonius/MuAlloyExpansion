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
all s: Source, u: User | all id1, id2: ((source.s) & u.profile).ids | id1 != id2
}