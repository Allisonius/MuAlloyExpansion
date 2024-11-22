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
all u : User | all w1 : u.visible | all w2 : (u.visible - w1) {
    	w1 not in w2
    }
}