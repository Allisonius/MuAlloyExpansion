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
pred inv9[] {
(some s: (one Signal) {
(all x,y: (one Track) {
((((x->y) !in succs) && (y in Junction)) => (((x->s) !in signals) && (s in Semaphore)))
})
})
}





