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
source: (lone Source)
}
pred inv4[] {
(all u: (one User),w: (one (u.profile)) {
(lone (w & (u.visible)))
})
}