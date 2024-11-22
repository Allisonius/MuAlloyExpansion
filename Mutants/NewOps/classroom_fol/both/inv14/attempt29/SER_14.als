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
pred inv14[] {
(all c: (one Student),p1,p2: (one Person) {
(((p1 in Teacher) && ((p1->c) in Teaches)) => ((p1->p2) in Tutors))
})
}





