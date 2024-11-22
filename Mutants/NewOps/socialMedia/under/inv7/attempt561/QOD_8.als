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
(all z: (one (User - ((User)))) {
(((((User)) in (z.suggested)) && (((User)) !in (z.follows))) => (some y: (one (z.follows)) {
((((User)) in (y.follows)) && (((User)) != y))
}))
})
}





