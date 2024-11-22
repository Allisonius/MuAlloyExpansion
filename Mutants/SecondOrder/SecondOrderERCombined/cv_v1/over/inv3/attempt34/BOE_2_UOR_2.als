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
pred inv3[] {
(all u: (one User),w: (one Work),w1: (one Work) {
((((u.profile) in w1) && (w in (u.profile))) => ((w.ids) != (w1.ids)))
})
}