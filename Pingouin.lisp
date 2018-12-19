;;;;classe pingouin
(load "Oiseau.lisp")

(defclass Pingouin (Oiseau)
  (



   (alimentation
     :initform 'carnivore ;valeur par defaut
     :accessor get_alimentation ;getteur
     :documentation "type d'alimentation")

  (dangereux ;liste_car est un attribut de pingouin
     :initform 'non ;les valeurs par defaut
     :accessor get_dangereux ;getteur
     :documentation "boolean qui indique si l'animal est dangereux pour l'homme")
 
  (lieu ;
     :initform 'eau ;valeur par defaut
     :accessor get_lieu ;getteur
     :documentation "lieu ou l'animal vit habituellement") 

  ;(class-name name "pingouin")
  
  )



  )

; Exemple pour creer une instance de pingouin
(setf pingouin (make-instance 'Pingouin))
;(format t (class-name pingouin))
(format t "alimentation : ~d~%" (get_alimentation pingouin))
(format t "est dangereux : ~d~%" (get_dangereux pingouin))
(format t "habituellement vit : ~d~%" (get_lieu pingouin))


;slots indirects
(format t "recouvert de : ~d~%" (get_recouvert pingouin))
(format t "respire avec : ~d~%" (get_respiration pingouin))
