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
pred inv13[] {
(no t: (one Person),s: (one Student) {
(((t.Tutors) in Person) && (t in Teacher) && ((t->s) in Tutors))
})
}





