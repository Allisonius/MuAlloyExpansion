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
pred inv5[] {
(all t: (one Class) {
(some p: (one Person) {
((p in Teacher) && (some (t.Teaches)))
})
})
}





