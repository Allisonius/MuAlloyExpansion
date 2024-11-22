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
pred inv8[] {
(all p1,p2: (one Teacher) {
(all c: (one Class) {
((((p1->c) in Teaches) && ((p2->c) in Teaches)) => (p1 != p2))
})
})
}





