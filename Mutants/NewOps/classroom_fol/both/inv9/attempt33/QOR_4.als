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
(one c: (one Class) {
(some t1,t2: (one Teacher) {
((((t1->c) in Teaches) && ((t2->c) in Teaches)) => (t1 = t2))
})
})
}





