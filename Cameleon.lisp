;;;;classe cameleon
(load "Reptile.lisp")

(defclass Cameleon (Reptile)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de cameleon
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'terre ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "cameleon")
  
  )



  )

; Exemple pour creer une instance de cameleon
(setf cameleon (make-instance 'Cameleon))
;(format t (class-name cameleon))
(format t "alimentation : ~d~%" (get_alimentation cameleon))
(format t "est dangereux : ~d~%" (get_dangereux cameleon))
(format t "habituellement vit : ~d~%" (get_lieu cameleon))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert cameleon))
(format t "respire avec : ~d~%" (get_respiration cameleon))
