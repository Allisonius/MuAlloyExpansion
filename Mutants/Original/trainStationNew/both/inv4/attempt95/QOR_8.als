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
pred inv4[] {
(some a: (one Track) {
(one b: (one (Track - a)) {
((((b->a) in succs) && ((a->b) !in succs)) => (a in Entry))
})
})
}





