module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv9[] {
(!(some c: (one Class) {
(all t1,t2: (one Teacher) {
((Teaches in (t1->c)) && ((t2->c) in Teaches) && (t1 = t2))
})
}))
}





