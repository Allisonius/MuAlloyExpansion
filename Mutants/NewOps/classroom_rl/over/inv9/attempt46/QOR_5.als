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
(some t1: (one Teacher) {
(one t2: (one Teacher) {
((t1.Teaches) != (t2.Teaches))
})
})
}





