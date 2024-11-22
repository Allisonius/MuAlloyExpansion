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
(some var123456 : Id { ((iden & (var123456->var123456)) in ((~(profile.ids)).(profile.ids)))})
}





