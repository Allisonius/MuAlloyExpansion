module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (one Work),
visible: (one Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv4[] {
(all id: (one Id) {
(lone (ids :> id))
})
}