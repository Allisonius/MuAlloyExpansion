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
(all id1: (one Id),w1,w2: (one Work) {
((((w1.source) != (w2.source)) && (id1 != (w1.ids))) => (id1 !in (w2.ids)))
})
}