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
(all c: (one Class),p1,p2: (Person - Teacher) {
(((p1->p2) in Tutors) => ((p1 in Teacher) && ((p1->c) in Teaches)))
})
}





