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
((some var123456 : Student { (no (var123456.Tutors))}) && (all p: (one (Person.Tutors)) {
((p in Student) && (p !in Teacher))
}))
}





