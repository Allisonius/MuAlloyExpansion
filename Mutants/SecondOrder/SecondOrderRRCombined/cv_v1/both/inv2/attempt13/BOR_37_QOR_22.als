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
pred inv2[] {
(all u: (one User) {
(one i: (one Institution) {
(all w: (one Work) {
(((w != (u.profile)) => (u in (w.source))) || (i in (w.source)))
})
})
})
}