module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (one Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all a,b: (one Work) {
(((visible.a) = (visible.b)) => ((a.profile) = (b.profile)))
})
}