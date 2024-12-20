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
source: (some Source)
}
pred inv3[] {
(all s: (one Source),w: (one Work) {
((w in (source.s)) <=> (one (w.ids)))
})
}