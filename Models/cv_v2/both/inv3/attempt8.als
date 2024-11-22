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
one  u1 : User |all  w1,w2 :u1.profile | w1.source = w2.source implies no (w1.ids & w2.ids)
}