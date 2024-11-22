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
source: (some Source)
}
pred inv2[] {
(all u: (one User),w: (one Work) {
(some i: (one Institution) {
(((w in (u.profile)) => (u != (w.source))) || (i in (w.source)))
})
})
}