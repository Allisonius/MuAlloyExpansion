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
source: (set Source)
}
pred inv3[] {
(all u: (one User),w1,w2: (one (u.profile)) {
(some i: (one (w1.ids)) {
(i !in (w2.ids))
})
})
}