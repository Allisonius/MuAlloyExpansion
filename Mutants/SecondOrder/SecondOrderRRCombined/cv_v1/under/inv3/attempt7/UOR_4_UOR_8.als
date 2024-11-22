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
ids: (lone Id),
source: (one Source)
}
pred inv3[] {
(all s: (one Source),u: (one User),id: (one Id) {
(lone ((((u.profile) & (source.s)).ids) & id))
})
}