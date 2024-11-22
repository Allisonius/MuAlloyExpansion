pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File1->File1 + File1->File2 + File2->File1
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File2 + File1->File1 + File2->File0 + File2->File2
Trash = File1
Protected = File2
inv9[]
}
}

run test1

pred test2{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File2 + File2->File2
Trash = File1 + File2
Protected = File2
inv9[]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]
}
}

run test3

pred test4{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File1->File1 + File2->File0
Trash = File0 + File2
Protected = File1 + File2
inv9[]
}
}

run test4

pred test5{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File2->File2
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test5

pred test6{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File2->File0
Trash = File1 + File2
Protected = File2
inv9[]
}
}

run test6

pred test7{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File2->File2
Trash = File1
Protected = File2
inv9[]
}
}

run test7

pred test8{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File0->File2 + File1->File2 + File2->File0 + File2->File2
Trash = File1
Protected = File2
inv9[]
}
}

run test8

pred test9{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
}
}

run test9

pred test10{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
Trash = File1
Protected = File1
inv9[]
}
}

run test10

pred test11{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File2 + File2->File1
Trash = File1
Protected = File2
inv9[]
}
}

run test11

pred test12{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File0->File2 + File1->File0 + File2->File1
Trash = File1 + File2
Protected = File2
inv9[]
}
}

run test12

pred test13{
some disj File0: File {
File = File0
no link
Trash = File0
Protected = File0
inv9[]
}
}

run test13

pred test14{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File2 + File1->File0 + File1->File1 + File1->File2 + File2->File0 + File2->File1
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test14

pred test15{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
inv9[]
}
}

run test15

pred test16{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File0
Protected = File1
inv9[]
}
}

run test16

pred test17{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File2->File1
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test17

pred test18{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test18

pred test19{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File1->File2 + File2->File1
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test19

pred test20{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File1->File1 + File2->File2
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test20

pred test21{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File2->File0
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test21

pred test22{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File0->File2 + File1->File0 + File1->File1 + File2->File0 + File2->File2
Trash = File1 + File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test22

pred test23{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File0->File2 + File1->File2 + File2->File0 + File2->File2
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test23

pred test24{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File1->File2 + File2->File0 + File2->File1
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test24

pred test25{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test25

pred test26{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test26

pred test27{
some disj File0: File {
File = File0
no link
Trash = File0
no Protected
no Protected' --loop state
inv9[]
}
}

run test27

pred test28{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]
}
}

run test28

pred test29{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File1->File1 + File1->File2 + File2->File0 + File2->File1
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test29

pred test30{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File2->File0
Trash = File1
Protected = File2
inv9[]
}
}

run test30

pred test31{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File1->File2 + File2->File0
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test31

pred test32{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test32

pred test33{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File2->File0
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test33

pred test34{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test34

pred test35{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File1->File0 + File1->File2 + File2->File1
Trash = File1
Protected = File2
inv9[]
}
}

run test35

pred test36{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File1->File0 + File2->File2
Trash = File1
Protected = File2
inv9[]
}
}

run test36

pred test37{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File1->File0 + File2->File2
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test37

pred test38{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test38

pred test39{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File2 + File1->File0 + File1->File2 + File2->File0 + File2->File2
Trash = File1 + File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test39

pred test40{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File2->File2
Trash = File1 + File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test40

pred test41{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test41

pred test42{
some disj File1, File0: File {
File = File0 + File1
no link
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test42

pred test43{

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]

}

run test43

pred test44{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test44

pred test45{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File2->File0 + File2->File2
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test45

pred test46{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File2 + File2->File1
Trash = File1 + File2
Protected = File2
inv9[]
}
}

run test46

pred test47{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File1->File1 + File2->File1
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test47

pred test48{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File1->File1 + File1->File2 + File2->File0 + File2->File2
Trash = File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test48

pred test49{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test49

pred test50{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File2->File2
Trash = File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test50

pred test51{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test51

pred test52{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
Trash = File0
Protected = File1
inv9[]
}
}

run test52

pred test53{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File0->File2 + File1->File0 + File1->File2 + File2->File1 + File2->File2
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test53

pred test54{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File1
Trash = File0
Protected = File1
inv9[]
}
}

run test54

pred test55{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File1->File2 + File2->File2
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test55

pred test56{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File0
}
}

run test56

pred test57{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File1->File0 + File1->File1 + File2->File0 + File2->File1
Trash = File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test57

pred test58{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
}
}

run test58

pred test59{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test59

pred test60{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File1->File1 + File2->File0
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test60

pred test61{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File2->File0
no Trash
no Trash' --loop state
Protected = File1 + File2
inv9[]
}
}

run test61

pred test62{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test62

pred test63{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test63

pred test64{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File0->File2 + File1->File2 + File2->File0 + File2->File2
no Trash
no Trash' --loop state
Protected = File1 + File2
inv9[]
}
}

run test64

pred test65{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test65

pred test66{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File2->File0
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test66

pred test67{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]
}
}

run test67

pred test68{
some disj File1, File0: File {
File = File0 + File1
no link
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]
}
}

run test68

pred test69{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File2->File0
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]
}
}

run test69

pred test70{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File1->File1 + File2->File2
Trash = File1
Protected = File2
inv9[]
}
}

run test70

pred test71{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File1->File1 + File2->File0
Trash = File1 + File2
Protected = File2
inv9[]
}
}

run test71

pred test72{
some disj File0: File {
File = File0
no link
no Trash
no Trash' --loop state
Protected = File0
inv9[]
}
}

run test72

pred test73{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File2 + File1->File0 + File2->File2
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test73

pred test74{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File1->File2 + File2->File1
Trash = File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test74

pred test75{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File2->File0
Trash = File0 + File2
Protected = File1 + File2
inv9[]
}
}

run test75

pred test76{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File1->File0 + File2->File1
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test76

pred test77{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File2->File2
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test77

pred test78{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]
}
}

run test78

pred test79{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test79

pred test80{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File1->File1 + File2->File0
no Trash
no Trash' --loop state
Protected = File2
inv9[]
}
}

run test80

pred test81{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test81

pred test82{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File1->File1 + File2->File0
Trash = File2
Protected = File1 + File2
inv9[]
}
}

run test82

pred test83{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv9[]
}
}

run test83

pred test84{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File2->File0
Trash = File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test84

pred test85{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File2->File1
Trash = File2
no Protected
no Protected' --loop state
inv9[]
}
}

run test85

pred test86{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv9[]
}
}

run test86

pred test87{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File2->File0 + File2->File2
Trash = File1
Protected = File2
inv9[]
}
}

run test87

pred test88{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File2->File0 + File2->File1 + File2->File2
Trash = File2
Protected = File2
inv9[]
}
}

run test88

