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
(some q: (one Person),t: (one Teacher) {q != p =>  {q != p =>  {
(((t->p) in Tutors) || (((q->p) in Tutors) && ((t->q) in Tutors)) || (((t->q) in Tutors) && ((q->p) in Tutors) && ((p->t) in Tutors)))
}}})
})
}





