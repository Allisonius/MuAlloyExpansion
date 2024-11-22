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
pred inv5[] {
(all a,b,c: (one Track) {
((((a->b) in succs) && ((c->b) in succs) && ((b->b) !in succs)) => (b = Junction))
})
}





