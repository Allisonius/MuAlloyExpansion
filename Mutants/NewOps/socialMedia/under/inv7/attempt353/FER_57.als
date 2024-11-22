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
(all disj u,uu: (one User),f: (one (((u.follows).follows) - u)) {
(((uu !in (u.follows)) && (uu in f)) => (uu in (u.sees)))
})
}





