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
(((((User)) !in (z.follows)) && (((User)) in (z.suggested))) => (some y: (one (User - z)) {
((y in (z.follows)) && (((User)) in (y.follows)) && (((User)) != y))
}))
})
}





