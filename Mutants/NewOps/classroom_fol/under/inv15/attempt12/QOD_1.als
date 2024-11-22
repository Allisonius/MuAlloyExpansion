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
((((Person)) in Teacher) || (some t: (one Teacher) {
((t->((Person))) in Tutors)
}) || (some p2: (one Person),t: (one Teacher) {
(((p2->((Person))) in Tutors) && ((t->p2) in Tutors))
}))
}





