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
((all var123456 : Student { ((Teacher.Tutors) in var123456)}) && ((Tutors.Student) in Teacher))
}





