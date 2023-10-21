(deftemplate entry
(multislot char))

(deffacts entrance-char
(entry(char A B C D)))

(defrule permutation1
(entry(char ?a ?b $?rest))
=>(assert(entry(char ?b ?a $?rest)))
(printout t ?a " " ?b " " $?rest crlf))

(defrule permutation2
(entry(char ?n $?rest))
=>(assert(entry(char ?rest ?n))))

