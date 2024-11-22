module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (some Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (lone Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),disj w1,w2: (one (u.visible)) {
(((w1 + w2) in (u.profile)) => (no ((w1.ids) & (w2.ids))))
})
}