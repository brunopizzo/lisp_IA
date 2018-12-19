;;;;;;;;;;;;;;;;;;;;
;;;; regles ;;;;;;;
;;;;;;;;;;;;;;;;;;;;

;;;on ajoute la classe de la base de faits
(load "BaseDeFaits.lisp")


(defvar *regles* '())

;;; structure de la regle
(defstruct regle
  priorite
  cas
  action
  utilise
  )

;;;function qui permet d'ajouter une nouvelle regle
;;; p c'est la priorite
;;; c cas (condition) pour activer la regle
;;; a action
;;; remarque utilise est toujours a 0 car quand on cree un regle elle n est pas utilise
(defun new_rule (p c a)

  (push (make-regle :priorite p
		    :cas c
		    :action a
		    :utilise 0) *regles*)
  )

;;; trie les regles par rapport a la priorite
(defun sort_regles_by_weight(regles)
  (sort regles #'< :key #'regle-priorite)
  )

;;; met en debut de liste les regles non utilisees
(defun sort_regles_by_used(regles)
  (sort regles #'< :key #'regle-utilise)
  )

;;; met en debut liste les regles activables
(defun push_regles_non_activable(regles)
  (defvar liste_vide '())

  (cond
    ((not (regle-cas (car regles)))
     (defvar premier (car regles))
     (setq regles (delete premier regles))
     (nconc regles (push premier liste_vide))
     (push_regles_non_activable regles))
    (t regles)
     )

    )
  
;;; fait le tri complet et retourne la liste pour avoir en premiere place la meilleure regle
;;; utiliser de cette maniere : (setq l (sort_regles l))
(defun sort_regles(regles)
  (sort_regles_by_weight regles)
  (sort_regles_by_used regles)
  (push_regles_non_activable regles)
  )

;;; verifie si la premiere regle de la liste est activable
(defun check_if_regles_activables(regles)
  (cond
    ((eq (regle-utilise (car regles)) 0) t)
     (t NIL)
     )

  )

;;; ajoute les regles dans la base de regles
(defun reset_rules()
  (setq *regles* '())

(new_rule 
  2
  t
  '(progn
     (print "Respire avec : poumons branchies ?")
     (edit_base *baseDeFaits* 'respiration (read))
     )
  )


(new_rule 
  3
  t
  '(progn
     (print "Il est recouvert de : poils plumes ecailles ?")
     (edit_base *baseDeFaits* 'recouvert (read))
     )
  )
(new_rule 
  4
  t
  '(progn
     (print "Il est dangereux ? oui non")
     (edit_base *baseDeFaits* 'dangereux (read))
     )
  )

(new_rule 
  5
  t
  '(progn
     (print "Il est : omnivore carnivore herbivore ?")
     (edit_base *baseDeFaits* 'alimentation (read))
     )
  )

(new_rule
  6
  t
  '(progn
     (print "Il vit sur : terre air eau ?")
     (edit_base *baseDeFaits* 'lieu (read))
     )
  )
(format t "Vous venez d'ajouter les regles~%")
)


(reset_rules)
