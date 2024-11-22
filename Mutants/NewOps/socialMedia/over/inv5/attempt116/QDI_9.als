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
((all i: (Influencer - User) {
(all u: (one User) {
(i in (u.follows))
})
}) && (all u: (one User) {
(u !in (u.follows))
}))
}





