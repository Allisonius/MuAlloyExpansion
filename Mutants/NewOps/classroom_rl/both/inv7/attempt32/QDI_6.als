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
pred inv7[] {
(all t: (Person - Teacher),c: (one Class) {
(some (c->(t->Group)))
})
}





