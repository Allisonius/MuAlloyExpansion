module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (some Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv1[] {
(all w: (one Work) {
((w !in ((User.visible) :> Work)) => (w in ((User.profile) :> Work)))
})
}