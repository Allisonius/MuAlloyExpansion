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
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User) {
(all w1,w2: (one Work) {
(((w1 !in w2) && ((w1 + w2) in (u.visible))) => (no ((w1.ids) & (w2.ids))))
})
})
}