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
pred inv4[] {
(all u: (one User),disj w1,w2: (one u) {
(((w1.ids) in (w2.ids)) => (no ((w1 + w2) & (u.profile))))
})
}