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
source: (lone Source)
}
pred inv2[] {
(all u: (one User) {
(all i: (one Institution) {
(all w: (one Work) {
(((u in (w.source)) => (w in (u.profile))) || (i in (w.source)))
})
})
})
}