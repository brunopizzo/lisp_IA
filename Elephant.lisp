;;;;classe tigre
(load "Mammifere.lisp")

(defclass Elephant (Mammifere)
  (



   (alimentation
     :initform 'herbivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de tigre
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'terre ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "tigre")
  
  )



  )

; Exemple pour creer une instance de tigre
(setf elephant (make-instance 'Elephant))
;(format t (class-name tigre))
(format t "alimentation : ~d~%" (get_alimentation elephant))
(format t "est dangereux : ~d~%" (get_dangereux elephant))
(format t "habituellement vit : ~d~%" (get_lieu elephant))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert elephant))
(format t "respire avec : ~d~%" (get_respiration elephant))
