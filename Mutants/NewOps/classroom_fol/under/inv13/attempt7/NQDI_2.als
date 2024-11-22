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
(all s: (one Student) {s != p =>  {s != p =>  {
(((p->s) in Tutors) => (p in Teacher))
}}})
})
}





