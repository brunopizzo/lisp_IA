;;;;classe saumon
(load "Poisson.lisp")

(defclass Saumon (Poisson)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de saumon
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'eau ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "saumon")
  
  )



  )

; Exemple pour creer une instance de saumon
(setf saumon (make-instance 'Saumon))
;(format t (class-name saumon))
(format t "alimentation : ~d~%" (get_alimentation saumon))
(format t "est dangereux : ~d~%" (get_dangereux saumon))
(format t "habituellement vit : ~d~%" (get_lieu saumon))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert saumon))
(format t "respire avec : ~d~%" (get_respiration saumon))
