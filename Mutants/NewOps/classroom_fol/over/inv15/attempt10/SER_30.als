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
pred inv15[] {
(all p: (one Person) {
(some t: (one Student) {
(((t->p) in Tutors) || (some q: (one Person) {
(((q->p) in Tutors) && ((t->q) in Tutors))
}))
})
})
}





