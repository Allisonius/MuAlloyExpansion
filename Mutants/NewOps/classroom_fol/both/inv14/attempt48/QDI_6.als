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
(all s: (Person - Teacher) {
(some c: (one Class) {
(some t: (one Teacher) {
(((t->s) in Tutors) => ((t->c) in Teaches))
})
})
})
}





