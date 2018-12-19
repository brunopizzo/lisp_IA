;;;;classe poissonRouge
(load "Poisson.lisp")

(defclass PoissonRouge (Poisson)
  (



   (alimentation
     :initform 'omnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de poissonRouge
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'eau ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "poissonRouge")
  
  )



  )

; Exemple pour creer une instance de poissonRouge
(setf poissonRouge (make-instance 'PoissonRouge))
;(format t (class-name poissonRouge))
(format t "alimentation : ~d~%" (get_alimentation poissonRouge))
(format t "est dangereux : ~d~%" (get_dangereux poissonRouge))
(format t "habituellement vit : ~d~%" (get_lieu poissonRouge))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert poissonRouge))
(format t "respire avec : ~d~%" (get_respiration poissonRouge))
