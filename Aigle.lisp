;;;;classe aigle
(load "Oiseau.lisp")

(defclass Aigle (Oiseau)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de aigle
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'air ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "aigle")
  
  )



  )

; Exemple pour creer une instance de aigle
(setf aigle (make-instance 'Aigle))
;(format t (class-name aigle))
(format t "alimentation : ~d~%" (get_alimentation aigle))
(format t "est dangereux : ~d~%" (get_dangereux aigle))
(format t "habituellement vit : ~d~%" (get_lieu aigle))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert aigle))
(format t "respire avec : ~d~%" (get_respiration aigle))
