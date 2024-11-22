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
source: (one Source)
}
pred inv4[] {
(some u: (one User) {
(((u.visible) != Work) && (((~ids).ids) in iden) && ((ids.(~ids)) in iden))
})
}