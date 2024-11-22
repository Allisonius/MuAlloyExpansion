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
(some u: (one User),w: (one Work),w1: (one Work) {
((before (((w.source) = (w1.source)) && (w1 in (u.profile)) && (w in (u.profile)))) => ((w.ids) != (w1.ids)))
})
}