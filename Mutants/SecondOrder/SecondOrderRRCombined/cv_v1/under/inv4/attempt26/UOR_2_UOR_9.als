module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (one Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (one Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),disj w1,w2: (one (u.profile)) {
((w1 = w2) => (!((w1 in (u.visible)) && (w2 in (u.visible)))))
})
}