module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(all u1: (one User),w1,w2: (one (u1.profile)) {
((some ((w1.source) & (w2.source))) => (no ((w1.ids) & w2)))
})
}





