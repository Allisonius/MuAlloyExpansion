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
source: (some Source)
}
pred inv3[] {
(some w: (one (source.Source)),disj w1,w2: (one (w.ids)) {
(w1 != w2)
})
}