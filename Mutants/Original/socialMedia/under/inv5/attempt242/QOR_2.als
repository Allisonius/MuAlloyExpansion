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
(no x: (one User) {
(all y: (one User) {
(((y in Influencer) && (!(x in Influencer))) => (y in (x.follows)))
})
})
}





