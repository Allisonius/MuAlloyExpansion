module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (one Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (one Id),
source: (one Source)
}
pred inv3[] {
(all w: (one Work),w1: (one Work) {
(no ((w.ids) & (w1.ids)))
})
}