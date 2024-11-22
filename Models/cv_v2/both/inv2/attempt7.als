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
one u : User | all i : Institution, w : u.profile | always( w.source =u or w.source = Institution)
}