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
(some t: (one Teacher) {
(some c: (one Class) {
(all s: (one Student) {
(((t->s) in Tutors) => (some t: (one Teacher) {
((t->c) in Teaches)
}))
})
})
})
}





