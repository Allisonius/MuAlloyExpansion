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
(all u: (one User),uu: (one Ad) {
((uu in (u.suggested)) => ((uu !in (u.follows)) && (uu in ((u.follows).follows))))
})
}





