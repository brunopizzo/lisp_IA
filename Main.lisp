(load "Regles.lisp")



; Le moteur d'inférences
(defun moteur (*baseDeFaits* *regles*)
  ;on mets dans l'ordre les regles
  (setq *regles* (sort_regles *regles*))

  (format t "~%~%~%-----etat de la base de faits-----~%")
  (write *baseDeFaits*)
  (format t "~%~%~%-----etat de la base de regles-----~%")
  (write *regles*)
  (format t "~%~%~%-----tapez \">\" pour continuer...-----~%")
  (read)
  (cond
    ;condition d'arret si il reste un animal
    ((eq 1 (nb_animaux *baseDeFaits*)) (format t "l'animal est :~%") (print_animals *baseDeFaits*))
    ;si il n y a plus d'animaux on recommence
    ((eq 0 (nb_animaux *baseDeFaits*)) (format t "aucun animal avec les caracteristiques demandees ! Recommencez !~%") (sleep 3) (add_animals *baseDeFaits*) (add_categories *baseDeFaits*) (reset_rules) (moteur *baseDeFaits* *regles*) )
    ; s'il n ya plus de regles activables on reactives les regles deja utilisees
    ((not (check_if_regles_activables *regles*)) (print "Il ne reste plus de règles activables") (choose_animal *baseDeFaits*) (moteur *baseDeFaits* *regles*))
    (T (progn 
	 (eval (regle-action (car *regles*))) ; on pose une question et j'active la regle
	 (setf (regle-utilise (car *regles*)) 1) ;je marque la regle comme utilise

		 (moteur *baseDeFaits* *regles*)))))


(moteur *baseDeFaits* *regles*)
