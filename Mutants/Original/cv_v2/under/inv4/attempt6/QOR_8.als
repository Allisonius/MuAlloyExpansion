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
pred inv4[] {
(all u: (one User) {
(some w1: (one (u.visible)) {
(all w2: (one ((u.visible) - w1)) {
(w1 !in w2)
})
})
})
}





