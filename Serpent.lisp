;;;;classe serpent
(load "Reptile.lisp")

(defclass Serpent (Reptile)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de serpent
     :initform 'oui ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'terre ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "serpent")
  
  )



  )

; Exemple pour creer une instance de serpent
(setf serpent (make-instance 'Serpent))
;(format t (class-name serpent))
(format t "alimentation : ~d~%" (get_alimentation serpent))
(format t "est dangereux : ~d~%" (get_dangereux serpent))
(format t "habituellement vit : ~d~%" (get_lieu serpent))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert serpent))
(format t "respire avec : ~d~%" (get_respiration serpent))
