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
(all t,s1,s2: (one Person) {
(all c: (one Class) {
(all g: (one Group) {
(((t->s1) in Tutors) && ((t->s2) in Tutors))
})
})
})
}





