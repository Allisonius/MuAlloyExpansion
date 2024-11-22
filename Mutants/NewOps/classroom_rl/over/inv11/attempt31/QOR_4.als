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
pred inv11[] {
(one c: (one Class) {
(some t: (one Teacher) {
((some (Person.(c.Groups))) => (t in (Teaches.c)))
})
})
}





