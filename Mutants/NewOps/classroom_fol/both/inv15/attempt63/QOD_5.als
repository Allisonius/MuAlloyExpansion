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
((p1->t) in Tutors)
}) || (((p1->((Person))) in Tutors) && ((((Person))->((Teacher))) in Tutors)))
})
}





