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
pred inv8[] {
(all t: (one Teacher) {
(all c1,c2: (one Class) {
((Teaches in (t->c1)) => ((t->c2) !in Teaches))
})
})
}





