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
pred inv9[] {
(lone t1,t2: (one Teacher),c: (one Class) {
((((t1->c) in Teaches) && ((t2->c) in Teaches)) => ((t1->t2) !in Teaches))
})
}





