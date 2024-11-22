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
(all u: (one User) {
(lone disj w1,w2: (one (u.profile)) {
(((w1 in (u.visible)) && (w2 in (some (u.visible)))) => (no ((w1.ids) & (w2.ids))))
})
})
}