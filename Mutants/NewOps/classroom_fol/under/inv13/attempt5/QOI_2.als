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
((no var123456 : Teacher { (var123456 in (Person.(^(*Tutors))))}) && (Student in (Person.(*Tutors))))
}





