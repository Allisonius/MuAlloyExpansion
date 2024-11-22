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
pred inv4[] {
(some u: (one User) {
(((u.visible) in Work) && (iden in ((~ids).ids)) && ((ids.(~ids)) in iden))
})
}