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
(no var123456 : User { ((((var123456.visible).ids) = ((var123456.profile).ids)) => (one ((var123456.visible).ids)))})
}





