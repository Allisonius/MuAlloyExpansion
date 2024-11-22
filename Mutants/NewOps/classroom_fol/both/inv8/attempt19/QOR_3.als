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
(lone t: (one Teacher) {
(some x,y: (one Class) {
((((t->x) in Teaches) && ((t->y) in Teaches)) => (x = y))
})
})
}





