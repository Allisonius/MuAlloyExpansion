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
pred inv5[] {
(all u1,u2: (one Influencer) {
(((u1 in Influencer) && (u1 != u2)) => (u1 in (u2.follows)))
})
}





