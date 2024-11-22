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
all u : User | all disj w1, w2 : (u.profile) {
      	all id : w1.ids | id not in w2.ids
      	all id : w2.ids | id not in w1.ids
    }
}