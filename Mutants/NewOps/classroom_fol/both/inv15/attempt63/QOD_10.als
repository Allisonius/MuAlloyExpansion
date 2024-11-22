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
((some t: (one Teacher) {
((((Person))->t) in Tutors)
}) || (some p2: (one Person),t: (one Teacher) {
(((((Person))->p2) in Tutors) && ((p2->t) in Tutors))
}))
}





