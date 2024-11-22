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
(all a: (one Track) {
(some b: (one Entry),c: (one Signal) {
(((a->b) in succs) && ((a->c) in succs))
})
})
}





