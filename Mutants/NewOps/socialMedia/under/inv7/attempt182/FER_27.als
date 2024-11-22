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
(all disj u,uu: (one User) {
(((u in ((uu.posts).follows)) && (u !in (uu.follows))) <=> (u in (uu.suggested)))
})
}





