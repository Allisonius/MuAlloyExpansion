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
((y in (u.suggested)) => ((lone ((follows.y) & (u.follows))) && (no (y & (u.follows)))))
})
}





