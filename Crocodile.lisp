;;;;classe crocodile
(load "Reptile.lisp")

(defclass Crocodile (Reptile)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de crocodile
     :initform 'oui ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'terre ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "crocodile")
  
  )



  )

; Exemple pour creer une instance de crocodile
(setf crocodile (make-instance 'Crocodile))
;(format t (class-name crocodile))
(format t "alimentation : ~d~%" (get_alimentation crocodile))
(format t "est dangereux : ~d~%" (get_dangereux crocodile))
(format t "habituellement vit : ~d~%" (get_lieu crocodile))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert crocodile))
(format t "respire avec : ~d~%" (get_respiration crocodile))
