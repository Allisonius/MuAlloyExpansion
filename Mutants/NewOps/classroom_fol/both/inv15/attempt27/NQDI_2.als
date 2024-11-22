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
(some p2: (one Person) {p2 != p =>  {p2 != p =>  {
(((p->p2) in Tutors) && (p in Teacher))
}}})
})
}





