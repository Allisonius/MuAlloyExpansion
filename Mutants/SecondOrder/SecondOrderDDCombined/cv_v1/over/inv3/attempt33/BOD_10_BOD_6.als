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
pred inv3[] {
(all w: (one Work),w1: (one Work) {
(((w in User) && (w1 in (User.profile))) => (no (w & (w1.ids))))
})
}