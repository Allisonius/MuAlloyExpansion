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
(all u,u1,u2: (one User) {
(((suggested.u) in u1) => ((u1 in (u2.follows)) && (u2 in (follows.u))))
})
}





