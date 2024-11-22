module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (one Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),disj w1,w2: (one (u.profile)) {
((some ((w1.ids) & (w2.ids))) => (!((w1 in (u.visible)) && (w2 in (u.visible)))))
})
}