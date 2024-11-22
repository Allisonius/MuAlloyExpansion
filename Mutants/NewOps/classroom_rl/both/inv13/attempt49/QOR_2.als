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
pred inv13[] {
(no p: (one Person) {
(((some (p.Tutors)) => (p in Student)) && ((some (p.Teaches)) => (p in Teacher)))
})
}





