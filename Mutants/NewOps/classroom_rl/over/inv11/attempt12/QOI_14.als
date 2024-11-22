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
(some var123456 : Class { ((some (var123456.Groups)) <=> (some t: (one Teacher) {
(var123456 in (t.Teaches))
}))})
}





