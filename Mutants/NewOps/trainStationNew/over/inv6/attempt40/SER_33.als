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
pred inv6[] {
(all a: (one Track) {
(some b: (one Semaphore) {
((a in Entry) => (((a->b) in signals) && (b in Speed)))
})
})
}





