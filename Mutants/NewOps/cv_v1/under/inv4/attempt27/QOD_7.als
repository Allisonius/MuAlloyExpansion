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
(((((Work)) != ((Work))) && ((((Work)) + ((Work))) in (((User)).visible))) => (no ((((Work)).ids) & (((Work)).ids))))
}





