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
((no ((Person - Teacher).Tutors)) && (no var123456 : Person { (no (Tutors->(var123456 - Student)))}))
}





