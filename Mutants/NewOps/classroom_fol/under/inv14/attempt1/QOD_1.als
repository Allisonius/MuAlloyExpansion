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
((((Student)) in Class) => (some t: (one Teacher) {
(((t->((Student))) in Tutors) && (t in Class))
}))
}





