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
(no w: (one Work) {
(some u: (one User) {
(((visible.w) in User) && ((~ids) in iden) && ((ids.(~ids)) in iden))
})
})
}