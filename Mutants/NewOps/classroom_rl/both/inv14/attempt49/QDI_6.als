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
(all p: (Person - Teacher) {
(some g: (one Group) {
(all t: (one Teacher) {
(no (t->(Groups.(p->g))))
})
})
})
}





