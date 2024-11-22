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
(one u: (one User) {
(all disj w1,w2: (one (u.profile)) {
((once ((w1 in (u.visible)) && (w2 in (u.visible)))) => (no ((w1.ids) & (w2.ids))))
})
})
}