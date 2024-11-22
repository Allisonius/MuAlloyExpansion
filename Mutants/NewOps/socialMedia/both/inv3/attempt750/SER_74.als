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
((all user,photo: (one univ) {
((((user in User) && (photo in Photo) && ((user->photo) in sees)) => (photo in Ad)) || (all followed: (one univ) {
(((followed in User) && ((followed->photo) in posts)) => ((user->followed) in follows))
}))
}) && (all u1,u2: (one User) {
(all ph: (one Photo) {
(((ph in (u1.sees)) => (ph in Day)) || ((ph in (u2.posts)) => (u2 in (u1.follows))))
})
}))
}





