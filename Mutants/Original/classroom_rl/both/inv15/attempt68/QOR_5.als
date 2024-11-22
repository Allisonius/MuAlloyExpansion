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
(some p: (one Person) {
((some ((p.(^Tutors)) & Teacher)) || (((p->p) in Tutors) && (p in Teacher)))
})
}





