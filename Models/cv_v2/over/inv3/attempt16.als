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
all u:User | all id1,id2 : Id | id1 in u.profile.ids implies id2 not in u.profile.ids
}