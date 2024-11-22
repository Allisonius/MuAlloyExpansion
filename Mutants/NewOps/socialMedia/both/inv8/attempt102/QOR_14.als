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
pred inv8[] {
(all x: (one User) {
(no ad: (one Ad) {
((ad in (x.sees)) => (ad in (((x.follows).posts) + ((x.suggested).posts))))
})
})
}





