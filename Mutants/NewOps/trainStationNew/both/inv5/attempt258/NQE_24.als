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
(some a,b: (one Track) {
(all x: (one Junction) {
((x in ((a.succs).(integer/next[]))) && (x in ((b.succs).(integer/next[]))))
})
})
}





