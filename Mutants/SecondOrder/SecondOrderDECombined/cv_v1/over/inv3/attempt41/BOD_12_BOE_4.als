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
pred inv3[] {
(all u: (one User),w1,w2: (one Work) {
(((w1 in (u.profile)) && (w2 in (u.profile)) && ((w1.source) = (w2.source))) => (w2 !in (w1.ids)))
})
}