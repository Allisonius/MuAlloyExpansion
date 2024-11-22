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
(all p1: (one Person) {
((some t: (one Teacher) {
(((t->p1) = Tutors) || ((p1->t) in Tutors))
}) || (some p2: (one Person),t: (one Teacher) {
(((p2->p1) in Tutors) && ((t->p2) in Tutors))
}))
})
}





