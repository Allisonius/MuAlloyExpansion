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
ids: (lone Id),
source: (one Source)
}
pred inv2[] {
(all u: (one User),w: (one Work) {
((w in (u.profile)) => (((w.source) = u) || ((w.source) = Institution)))
})
}