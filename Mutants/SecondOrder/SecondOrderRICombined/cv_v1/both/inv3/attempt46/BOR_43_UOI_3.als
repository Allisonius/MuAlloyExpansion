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
(all u: (one User),w: (one Work) {
((w in (some (u.profile))) => (((w.ids) = (w.ids)) && (all u2: (one User),w2: (one Work) {
(((w2 = (u2.profile)) && ((u2.source) = (u.source))) => ((w.ids) = (w2.ids)))
})))
})
}