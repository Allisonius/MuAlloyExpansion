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
(all disj u,s: (one User) {
(((((s.follows).follows) in u) && (u !in (s.follows))) => (u in (s.suggested)))
})
}





