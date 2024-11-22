module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),w1,w2: (one Work) {
(((some id: (one (w1.ids)) {
(id in (w2.ids))
}) && (w1 in (u.visible))) => (w2 != (u.visible)))
})
}