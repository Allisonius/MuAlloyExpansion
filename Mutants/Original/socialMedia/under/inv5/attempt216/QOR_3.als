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
(lone u: (one User),u2: (one User) {
(((u in Influencer) && (u != u2)) => (u in (u2.follows)))
})
}





