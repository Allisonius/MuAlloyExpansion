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
((((u.profile) in (u.visible)) && ((u.profile) in (u.visible))) => (no (((u.profile).ids) & ((u.profile).ids))))
})
}





