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
(no u: (one User) {
(one w: (one Work) {
(((w.source) in u) || ((w.source) in Institution))
})
})
}