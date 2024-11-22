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
ids: (set Id),
source: (one Source)
}
pred inv4[] {
(all u: (one User),i: (one Id),w: (one Work) {
((lone ((u.visible) & i)) && (lone (w.ids)))
})
}