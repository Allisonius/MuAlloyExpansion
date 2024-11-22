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
pred inv1[] {
(some w: (one Work) {
(some u: (one User) {
((w in (u.visible)) => (w in (u.profile)))
})
})
}