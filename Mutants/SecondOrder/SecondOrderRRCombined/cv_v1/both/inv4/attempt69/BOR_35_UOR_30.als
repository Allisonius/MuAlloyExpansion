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
(all disj w1,w2: (one Work) {
(((one ((w1.ids) & (w2.ids))) && (w1 != (u.profile))) => (w2 !in (u.visible)))
})
})
}