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
pred inv2[] {
(one u: (one User) {
(((((Work)) in (u.profile)) => ((((Work)).source) in u)) || ((((Work)).source) in Institution))
})
}





