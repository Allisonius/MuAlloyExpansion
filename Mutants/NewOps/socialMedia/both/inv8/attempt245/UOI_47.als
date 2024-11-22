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
(all usr1,usr2: (one User) {
(some ad: (one Ad) {
((((usr2->ad) in posts) && ((usr1->usr2) !in (^follows))) || (((usr1->usr2) !in suggested) => ((usr1->ad) !in sees)))
})
})
}





