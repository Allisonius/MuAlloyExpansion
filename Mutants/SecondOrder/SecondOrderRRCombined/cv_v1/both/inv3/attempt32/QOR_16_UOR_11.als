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
pred inv3[] {
(some u: (one User) {
(all w: (one (u.profile)) {
((w.ids) !in (((u.profile) - w).ids))
})
})
}