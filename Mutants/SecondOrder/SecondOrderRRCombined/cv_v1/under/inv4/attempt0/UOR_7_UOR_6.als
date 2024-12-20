module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (set Id),
source: (one Source)
}
pred inv4[] {
((ids.visible) in (Id->lone User))
}