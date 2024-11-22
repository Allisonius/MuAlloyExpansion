module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (lone Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (some Source)
}
pred inv2[] {
(all u: (one User) {
(all i: (one Institution) {
(all w: (one Work) {
(((w in (u.profile)) => (u in (w.source))) || (i in (w.source)))
})
})
})
}