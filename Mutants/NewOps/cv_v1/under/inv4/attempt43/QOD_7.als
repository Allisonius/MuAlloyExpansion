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
(((some (((((User)).profile).ids) & ((((User)).profile).ids))) && (((((User)).profile).source) != ((((User)).profile).source))) => (!(((((User)).profile) in (((User)).visible)) && ((((User)).profile) in (((User)).visible)))))
}





