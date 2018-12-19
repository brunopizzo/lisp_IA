;;;;classe singe
(load "Mammifere.lisp")

(defclass Singe (Mammifere)
  (



   (alimentation
     :initform 'omnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de singe
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'terre ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "singe")
  
  )



  )

; Exemple pour creer une instance de singe
(setf singe (make-instance 'Singe))
;(format t (class-name singe))
(format t "alimentation : ~d~%" (get_alimentation singe))
(format t "est dangereux : ~d~%" (get_dangereux singe))
(format t "habituellement vit : ~d~%" (get_lieu singe))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert singe))
(format t "respire avec : ~d~%" (get_respiration singe))
