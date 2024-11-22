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
(lone u,y,z: (one User) {
((u in (suggested.y)) => ((u !in (follows.y)) && (u in (follows.z)) && (z in (follows.y))))
})
}





