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
pred inv4[] {
(all a: (one Ad),u: (one User) {
(((u->a) in posts) => (some p: (one Photo) {
(((u->p) in posts) && (p = Ad))
}))
})
}





