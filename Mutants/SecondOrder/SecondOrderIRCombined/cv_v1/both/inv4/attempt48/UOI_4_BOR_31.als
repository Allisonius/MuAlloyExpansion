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
(always ((some Id) && (all u: (one User),disj w1,w2: (one (u.visible)) {
(no ((w1.ids) - (w2.ids)))
})))
}