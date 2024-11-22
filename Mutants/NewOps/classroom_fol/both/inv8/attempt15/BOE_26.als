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
(some t1: (one Teacher),c: (one Class) {
((Teaches in (t1->c)) || (!((t1->c) in Teaches)))
})
}





