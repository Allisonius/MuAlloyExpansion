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
(all p,u: (one User) {
(all s: (User & Influencer) {
((p in s) => ((p !in (u.follows)) && (p in (u.follows))))
})
})
}





