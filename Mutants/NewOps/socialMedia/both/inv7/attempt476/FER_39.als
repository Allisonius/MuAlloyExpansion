module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv7[] {
(all u,y: (one User) {
(some z: (one User) {
((y in (u.sees)) <=> ((y !in (u.follows)) && (y in (follows.z)) && (z in (follows.u))))
})
})
}





