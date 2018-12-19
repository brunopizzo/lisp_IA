;;;;classe requin
(load "Poisson.lisp")

(defclass Requin (Poisson)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de requin
     :initform 'oui ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'eau ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "requin")
  
  )



  )

; Exemple pour creer une instance de requin
(setf requin (make-instance 'Requin))
;(format t (class-name requin))
(format t "alimentation : ~d~%" (get_alimentation requin))
(format t "est dangereux : ~d~%" (get_dangereux requin))
(format t "habituellement vit : ~d~%" (get_lieu requin))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert requin))
(format t "respire avec : ~d~%" (get_respiration requin))
