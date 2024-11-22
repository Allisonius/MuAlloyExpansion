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
(((((Work)).ids) in (((Work)).ids)) => ((((Work)) in (((User)).visible)) || (((Work)) in (((User)).visible))))
}





