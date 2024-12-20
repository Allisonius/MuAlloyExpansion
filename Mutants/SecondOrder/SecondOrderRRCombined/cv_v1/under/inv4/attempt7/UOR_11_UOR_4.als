module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (lone Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (lone Source)
}
pred inv4[] {
(all u: (one User),w: (one (u.profile)) {
(lone (w & (u.visible)))
})
}