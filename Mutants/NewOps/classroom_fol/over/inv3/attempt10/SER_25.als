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
pred inv3[] {
((!(some p: (one Person) {
((p in Teacher) && (p in Teacher))
})) && (all p: (one Person) {
((p in Student) || (p in Teacher))
}))
}





