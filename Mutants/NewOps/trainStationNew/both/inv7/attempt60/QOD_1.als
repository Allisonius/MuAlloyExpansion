module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv7[] {
(((((Track)) !in Exit) => (some t2: (one Track) {
((((Track))->t2) in succs)
})) && (all t: (one Track) {
((t in Exit) => (all t2: (one Track) {
((t->t2) !in succs)
}))
}))
}





