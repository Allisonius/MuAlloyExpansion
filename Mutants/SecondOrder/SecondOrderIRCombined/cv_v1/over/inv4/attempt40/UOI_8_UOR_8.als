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
ids: (lone Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),w1,w2: (one Work) {
(((historically (((w1.ids) in (w2.ids)) || ((w2.ids) in (w1.ids)))) && (w1 in (u.visible))) => (w2 !in (u.visible)))
})
}