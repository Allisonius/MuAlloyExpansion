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
(some t: (one Teacher) {
(all p: (one Person) {p != t =>  {p != t =>  {
(t in (p.(^(~Tutors))))
}}})
})
}





