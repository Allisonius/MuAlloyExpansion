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
((some var123456 : Student { (no (var123456 & (Person.Tutors)))}) && (no (Teacher & (Tutors.Person))))
}





