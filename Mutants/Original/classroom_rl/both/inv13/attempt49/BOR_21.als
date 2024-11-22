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
(all p: (one Person) {
(((some (p.Tutors)) => (p != Student)) && ((some (p.Teaches)) => (p in Teacher)))
})
}





