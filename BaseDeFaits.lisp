;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; base de faits;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;on ajoute les classes des animaux
(load "Oiseau.lisp")
(load "Mammifere.lisp")
(load "Reptile.lisp")
(load "Poisson.lisp")



(load "Tigre.lisp")
(load "Elephant.lisp")
(load "Singe.lisp")

(load "Pingouin.lisp")
(load "Perroquet.lisp")
(load "Aigle.lisp")

(load "Crocodile.lisp")
(load "Serpent.lisp")
(load "Cameleon.lisp")

(load "Requin.lisp")
(load "Saumon.lisp")
(load "PoissonRouge.lisp")


(load "Affiche.lisp")

;;; structure de notre base
(defstruct base 
  recouvert
  respiration
  alimentation
  dangereux
  lieu
  animaux_possibles ;liste d'animaux possibles
  categorie_possibles ;liste de categorie possibles
  )


;;; on regardi si un animal possede la caracteristique demande
;;; par example on peut verifier si l'ANIMAL tigre dans son SLOT dangereux la valeur est OUI
;;; on retourne l'animal si vrai, NIL autrement
(defun match(animal slot val liste_de_base)

  (cond 
    ((eq liste_de_base 'animal)
  (cond
    ((eq slot 'alimentation) (cond ((not (eq (get_alimentation animal) val )) animal)))
    ((eq slot 'dangereux) (cond ((not (eq (get_dangereux animal) val )) animal)))
    ((eq slot 'lieu) (cond ((not (eq (get_lieu animal) val )) animal)))
    ((eq slot 'recouvert) (cond ((not (eq (get_recouvert animal) val )) animal)))
    ((eq slot 'respiration) (cond ((not (eq (get_respiration animal) val )) animal)))
    )
  )
  ((eq liste_de_base 'categorie)

   (cond
    ((eq slot 'recouvert) (cond ((not (eq (get_recouvert animal) val )) animal)))
    ((eq slot 'respiration) (cond ((not (eq (get_respiration animal) val )) animal)))
    )
   )
  )


  )

;;; dans une liste on supprime tous les animaux qui non pas la caracteristique demande
(defun remove_animals(l slot val)
     (setf (base-animaux_possibles l) (remove-if #'(lambda (X) (match X slot val 'animal)) (base-animaux_possibles l) ))
     (setf (base-categorie_possibles l) (remove-if #'(lambda (X) (match X slot val 'categorie)) (base-categorie_possibles l) ))
     ) 

;;; on modifie la valeur du slote de la base
(defun edit_base(struct slot val)

  (cond
    ((eq slot 'recouvert) (setf (base-recouvert struct) val)) 
    ((eq slot 'respiration) (setf (base-respiration struct) val)) 
    ((eq slot 'alimentation) (setf (base-alimentation struct) val)) 
    ((eq slot 'dangereux) (setf (base-dangereux struct) val))
    ((eq slot 'lieu) (setf (base-lieu struct) val))
    (t NIL)
    )

  (remove_animals struct slot val)
  )

(defun nb_animaux(b_f)
  (length (base-animaux_possibles b_f))
  )

(defun print_animals(b_f)
  (write (base-animaux_possibles b_f))
  )

(defun choose_animal(b_f)
  (format t "~%choisisez un animal par son indice ou alors rentrez -1 pour recomencer~%")
  (write (base-animaux_possibles b_f))
  (defvar choix (read))
  (cond
    ((eq -1 choix) (setf (base-animaux_possibles b_f) '()))
    (t 
      (defvar liste_vide '())
      (defvar choix_animal (nth (- choix 1) (base-animaux_possibles b_f)))
      (sleep 1)
      (write choix_animal)
      (sleep 3)
      (setf (base-animaux_possibles b_f) (push choix_animal liste_vide))
      ;(nconc (base-animaux_possibles b_f) (push choix_animal liste_vide))
      )
    )


  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; avec ces fonction on peut peupler la base
; le principe est d'avoir tous les animaux
; dans la base et supprimer les animaux au
; fur et a mesure
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;on ajoute les animaux dans la base
(defun add_animals(b_f)
  (push tigre (base-animaux_possibles b_f))
(push elephant (base-animaux_possibles b_f))
(push singe (base-animaux_possibles b_f))
(push aigle (base-animaux_possibles b_f))
(push pingouin (base-animaux_possibles b_f))
(push perroquet (base-animaux_possibles b_f))
(push crocodile (base-animaux_possibles b_f))
(push serpent (base-animaux_possibles b_f))
(push cameleon (base-animaux_possibles b_f))
(push requin (base-animaux_possibles b_f))
(push saumon (base-animaux_possibles b_f))
(push poissonRouge (base-animaux_possibles b_f))

(format t "Vous venez d'ajouter les animaux~%")

  
  )
;;;on ajoute les categories dans la base
(defun add_categories(b_f)
  (push mammifere (base-categorie_possibles b_f))
(push oiseau (base-categorie_possibles b_f))
(push reptile (base-categorie_possibles b_f))
(push poisson (base-categorie_possibles b_f))
(format t "Vous venez d'ajouter les categories~%")

  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; des tests

(defvar *baseDeFaits*)
;;; constructeur de la base
(setq *baseDeFaits* (make-base
	       :recouvert NIL
	       :respiration NIL
	       :alimentation NIL
	       :dangereux NIL
	       :lieu NIL
	       :animaux_possibles '()
	       :categorie_possibles '()
	       )
      )
(animation_bird 5)      
(add_animals *baseDeFaits*)
(add_categories *baseDeFaits*)
