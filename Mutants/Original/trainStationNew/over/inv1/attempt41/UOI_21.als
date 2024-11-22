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
pred inv1[] {
(some en: (one Entry) {
(some t: (one Track) {
(one ex: (one Exit) {
(((~(en->t)) in succs) && ((t->ex) in succs))
})
})
})
}





