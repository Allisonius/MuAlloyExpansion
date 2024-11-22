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
all u: User, w: Work | w in u.profile => w.ids = w.ids && all u2: User, w2: Work | (w2 in u2.profile && u2.source = u.source) => w.ids = w2.ids
}