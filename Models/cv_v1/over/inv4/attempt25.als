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
all u:User , w:Work, w1:Work | w in u.visible && w1 in u.visible implies w != w1
}