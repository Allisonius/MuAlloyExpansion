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
(all p1,p2: (one Person),c: (one Class) {
(((p1->p2) in Tutors) => ((p1 in Class) && (p2 in Student) && ((p1->c) in Teaches)))
})
}





