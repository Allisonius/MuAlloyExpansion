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
(some t: (one Teacher) {
(lone c: (one Class) {
((t->c) in Teaches)
})
})
}





