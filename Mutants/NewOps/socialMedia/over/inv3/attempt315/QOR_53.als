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
pred inv3[] {
((all na: (one (Photo - Ad)) {
(all u: (one User) {
(na in ((u.follows).posts))
})
}) && (some ad: (one Ad) {
(all u: (one User) {
(ad in (u.sees))
})
}))
}





