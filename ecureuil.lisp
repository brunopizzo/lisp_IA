;;;;classe tigre
(load "Mammifere.lisp")

(defclass Tigre (Mammifere)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de tigre
     :initform 'oui ;les valeurs par defaut
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
(setf tigre (make-instance 'Tigre))
;(format t (class-name tigre))
(format t "alimentation : ~d~%" (get_alimentation tigre))
(format t "est dangereux : ~d~%" (get_dangereux tigre))
(format t "habituellement vit : ~d~%" (get_lieu tigre))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert tigre))
(format t "respire avec : ~d~%" (get_respiration tigre))
