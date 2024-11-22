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
(all a: (one Ad) {
(some i: (one User) {
(all u: (one (User - i)) {
((a in (i.posts)) && (a in (u.sees)))
})
})
})
}





